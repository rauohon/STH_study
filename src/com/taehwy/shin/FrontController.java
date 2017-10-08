/**
 * 
 */
package com.taehwy.shin;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.taehwy.bean.Bean;
import com.taehwy.service.MailSender;
import com.taehwy.service.MemberManage;
import com.taehwy.utils.ProjectUtils;

/**
 * @클래스명 : FrontController
 * @작성자 : 신태휘
 * @작성일 : 2017. 9. 14.
 * @설명 : 
 * @수정이력 - 수정일, 수정자, 수정내용
 */
@Controller
public class FrontController {

	@Autowired
	private MemberManage mb;
	@Autowired
	private ProjectUtils session;
	@Autowired
	private MailSender ms;
	
	private ModelAndView mav = null;
	
	private static final Logger logger = LoggerFactory.getLogger(FrontController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView accessMain() {
		mav = new ModelAndView();
		mav.setViewName("home");
		
		return mav;
	}
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView accessMain(@ModelAttribute Bean bean) {
		mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	@RequestMapping(value="/logSign", method = RequestMethod.GET)
	public ModelAndView accessFrom() {
		mav = new ModelAndView();
		mav.setViewName("loginSignup");
				
		return mav;
	}
	@RequestMapping(value="/DupIdCheck", method = RequestMethod.POST)
	public ModelAndView dupIdCheck(@ModelAttribute Bean bean) {
	
		return null;
	}
	@RequestMapping(value="/Access", method = RequestMethod.POST)
	public ModelAndView access(@ModelAttribute Bean bean) {
	if(bean.getMbid() !=null) {
		System.out.println(bean.getMbid());
		System.out.println(bean.getMbpwd());		
		mav = mb.entrance(0, bean);
	}else {
		System.out.println("못가져와");
		mav.setViewName("home");
	}				
		return mav;
	}
	@RequestMapping(value="/AccessOut", method = RequestMethod.POST)
	public ModelAndView accessOut(@ModelAttribute Bean bean) {
		mav=mb.entrance(2, bean);
		
		return mav;
	}
	@RequestMapping(value="/Join", method = RequestMethod.POST)
	public ModelAndView join(@ModelAttribute Bean bean) {
	System.out.println(bean.getMbname());
		mav = mb.entrance(1, bean);		
		
		return mav;
	}
	@RequestMapping(value="/MemberInfo", method = RequestMethod.GET)
	public ModelAndView memberInfo(@ModelAttribute Bean bean) {
	System.out.println("회원 정보1");
		mav = mb.entrance(3, bean);
		
		return mav;
	}
	
	@RequestMapping(value="/Play", method = RequestMethod.GET)
	public ModelAndView play(@ModelAttribute Bean bean) {
	
		mav = mb.entrance(4, bean);
		
		return mav;
	}
	
	@RequestMapping(value="/PasswordChange", method = RequestMethod.POST)
	public ModelAndView passwordChange(@ModelAttribute Bean bean) {
	
		return null;
	}
	@RequestMapping(value="/Prev", method = RequestMethod.POST)
	public ModelAndView previousPage(@ModelAttribute Bean bean) {
	
		return null;
	}
	@RequestMapping(value="/Mail", method = RequestMethod.POST)
	public ModelAndView mailSender(@ModelAttribute Bean bean) {
	
		mav=ms.entrance(0, bean);
		
		return mav;
	}
}