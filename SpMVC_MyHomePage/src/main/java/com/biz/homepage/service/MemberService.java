package com.biz.homepage.service;

import com.biz.homepage.model.MemberVO;

public interface MemberService extends GenericService<MemberVO, String> {

	public MemberVO login(MemberVO loginVO);
}
