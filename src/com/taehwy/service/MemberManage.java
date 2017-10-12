/**
 * 
 */
package com.taehwy.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.taehwy.bean.Bean;
import com.taehwy.dao.IMybatis;
import com.taehwy.dao.TranEX;
import com.taehwy.utils.Encryption;
import com.taehwy.utils.ProjectUtils;

/**
 * @클래스명 : MemberManage
 * @작성자 : 신태휘
 * @작성일 : 2017. 9. 19.
 * @설명 : 
 * @수정이력 - 수정일, 수정자, 수정내용
 */
@Service
public class MemberManage extends TranEX {
	@Autowired
	private Encryption enc;
	@Autowired
	private ProjectUtils session;
	@Autowired
	private IMybatis dao;
	ModelAndView mav = null;

	public ModelAndView entrance(int serviceCode, Object bean) {
		try {
			if(session.getAttribute("page") != null) {
				session.removeAttribute("page");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		switch(serviceCode) {

		case 0:
			mav = access((Bean)bean);
			System.out.println(((Bean) bean).getMbid());
			System.out.println(((Bean) bean).getMbpwd());
			break;

		case 1:
			mav = join((Bean)bean);
			break;
			
		case 2:
			mav = accessOut((Bean)bean);
			break;
			
		case 3:
			mav = memberInfo((Bean)bean);
			break;
		
		case 4:
			mav = play((Bean)bean);
			break;
		}
		
		return mav;
	}

	private ModelAndView play(Bean bean) {
		mav = new ModelAndView();
		
		mav.setViewName("play");
		
		return mav;
	}

	private ModelAndView memberInfo(Bean bean) {
		System.out.println("회원 정보2");
		mav = new ModelAndView();
		
		bean = dao.getGeneralInfo(bean).get(0);
		mav.addObject("userMainInfo", getMainUserInfo(bean));
		mav.setViewName("memberInfo");		
		return mav;
	}

	private ModelAndView access(Bean bean) {
		mav = new ModelAndView();
		Map<String, String> map = new HashMap<String, String>();
		String page = "loginSignup";
		String message = "null";
		try {
			setTransactionConf(TransactionDefinition.PROPAGATION_REQUIRED, 
					TransactionDefinition.ISOLATION_READ_COMMITTED, false);
			if(dao.getDupIdCheck(bean)==1) {
				if(enc.matches(bean.getMbpwd(), dao.getSpwd(bean))) {
					map.put("mbid", bean.getMbid());
					map.put("contents", "1");
					if(dao.setAccHis(map) == 1) {
						List<Bean> history = dao.getAccessHistory(bean);						
						setTransactionResult(true);
						session.setAttribute("mbid", bean.getMbid());
						mav.addObject("history",history);
						bean = dao.getGeneralInfo(bean).get(0);
						mav.addObject("userMainInfo", getMainUserInfo(bean));
						mav.setViewName("main");					
					}else {
						setTransactionResult(false);
						mav.addObject("message", "SystemError.");
						mav.setViewName("loginSignup");
					}
				}else {
					setTransactionResult(false);
					mav.addObject("message", "패스워드가 올바르지 않아요.");
					mav.setViewName("loginSignup");
				}
			}else {
				setTransactionResult(false);
				mav.addObject("message", "아이디가 올바르지 않아요.");
				mav.setViewName("loginSignup");
			}
		}catch(Exception e) {
			e.printStackTrace();
			setTransactionResult(false);
			mav.addObject("message", "SystemError.");
			mav.setViewName("loginSignup");
		}
		return mav;
	}
	
	private String setAccessOut(Bean b) {
		StringBuffer sb = new StringBuffer();
		sb.append("<form action=\"AccessOut?mbid="+ b.getMbid() +"\" method=\"post\">");
		sb.append("<input type=\"submit\" value=\"로그아웃\">");
		sb.append("</form>");
		return sb.toString();
	}
	
	private String getMainUserInfo(Bean b){
		StringBuffer sb = new StringBuffer();
		
		sb.append("<table>");
		sb.append("<tr>");
		sb.append("<td onClick=\'moveMyPage()\'>" + b.getMbnick()  + "/"+ b.getMbid() + "</td>");
		sb.append("<td>" + "/"+ getStringDate(b.getDate()) + "</td>");
		sb.append("<td>" + "/"+ b.getLvName() + "</td>");
		sb.append("<td>" + "/"+ b.getAcName() + "</td>");
		sb.append("<td>" + "/"+ setAccessOut(b) + "</td>");
		sb.append("</tr>");
		sb.append("</table>");
		
		return sb.toString();
	}
	
	private String getStringDate(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss"); 
		return sdf.format(date);
	}


	private ModelAndView join(Bean bean) {
		mav = new ModelAndView();
		// 이름은 insert이지만 기본키 중복을 피하기 위해 update 구문을 사용
		// 기본키를 먼저 넣고 나머지를 update
		Map<String, String> map = new HashMap<String, String>();
		// setTransactionConf
		try {
			bean.setMbpwd(enc.encode(bean.getMbpwd()));
			bean.setMbname(enc.TripleDesEncoding(bean.getMbname(), bean.getMbnick()));
			bean.setMbnick(enc.aesEncode(bean.getMbnick(), bean.getMbname()));
			setTransactionConf(TransactionDefinition.PROPAGATION_REQUIRED, 
					TransactionDefinition.ISOLATION_READ_COMMITTED, false);
			if (dao.getDupIdCheck(bean) == 0) {
				System.out.println("1");
				if(dao.setJoin1_1(bean) != 0){
					System.out.println("2");
					if(dao.setJoin1_2(bean)!= 0){
						System.out.println("3");
						map.put("mbid", bean.getMbid());
						map.put("title","계정상태");
						map.put("contents", "회원 가입으로 [활동계정]이 되었습니다");
						if(dao.setJoin2(map) != 0) {
							System.out.println("4");
							map.put("title", "회원등급");
							map.put("contents", "회원 가입으로 [PEOPLE]이 되었습니다.");
							if(dao.setJoin2(map) != 0) {
								System.out.println("5");
								setTransactionResult(true);
								mav.addObject("result", "환영합니다.");
								mav.setViewName("home");
							}else {
								setTransactionResult(false);
								mav.addObject("result", "계정 상태 생성을 실패했습니다.");
								mav.setViewName("loginSignup");
							}
						}else {
							setTransactionResult(false);
							mav.addObject("result", "회원 등급 생성을 실패했습니다.");
							mav.setViewName("loginSignup");
						}					
					}else {
						setTransactionResult(false);
						mav.addObject("result", "회원 정보 기입을 실패했습니다.");
						mav.setViewName("loginSignup");
					}
				}else {
					setTransactionResult(false);
					mav.addObject("result", "회원 정보 가입을 실패했습니다.");
					mav.setViewName("loginSignup");
				}
			}else {
				setTransactionResult(false);
				mav.addObject("result", "아이디가 중복 되었습니다.");
				mav.setViewName("loginSignup");
			}
		}catch(Exception e) {
			e.printStackTrace();
			setTransactionResult(false);
			mav.addObject("result", "SystemError");
			mav.setViewName("loginSignup");
		}
		return mav;
	}
	private ModelAndView accessOut(Bean b) {
		Map<String, String> map = new HashMap<String, String>();
		RedirectView rv = null;
//		mav.setViewName("page");
		try {
			setTransactionConf(TransactionDefinition.PROPAGATION_REQUIRED, 
					TransactionDefinition.ISOLATION_READ_COMMITTED, false);
			map.put("mbid", session.getAttribute("mbid").toString());
			map.put("contents", "-1");
			if(dao.setAccHis(map) == 1) {
				setTransactionResult(true);
				session.removeAttribute("mbid");
				rv = new RedirectView("/");
				rv.setExposeModelAttributes(false);
				mav.setView(rv);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
}