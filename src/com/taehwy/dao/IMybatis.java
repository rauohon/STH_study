/**
 * 
 */
package com.taehwy.dao;

import java.util.List;
import java.util.Map;

import com.taehwy.bean.Bean;

/**
 * @클래스명 : IMybatis
 * @작성자 : 신태휘
 * @작성일 : 2017. 9. 14.
 */
public interface IMybatis {

	// accessCheck
	public int getAccessCheck(Bean bean);
	// access+userInfo1
	public Bean getUserInfo1(Bean bean);
	// access+userInfo2
	public Bean getUserInfo2(Bean bean);
	// AccHistory 입력
	public int setAccHis(Map map);
	// dupIdCheck
	public int getDupIdCheck(Bean bean);
	// IdPwdCheck
	public int getIdPwdCheck(Bean bean);
	// join1-1
	public int setJoin1_1(Bean bean);
	// join1-2
	public int setJoin1_2(Bean bean);
	// join2 회원등급, 계정 상태 입력
	public int setJoin2(Map map);
	// accessHistory
	public List<Bean> getAccessHistory(Bean bean);
	// levelHistroy
	public Bean getLevelHistroy(Bean bean);
	// activityHistroy
	public Bean getActivityHistroy(Bean bean);
	// getSpwd
	public String getSpwd(Bean bean);
	// getpwd
	public String getPwd(Bean bean);
	// getGeneralInfo
	public List<Bean> getGeneralInfo(Bean bean);
	// json test
	public List<Bean> getAH(Bean bean);

}