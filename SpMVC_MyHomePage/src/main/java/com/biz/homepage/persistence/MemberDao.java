package com.biz.homepage.persistence;

import org.apache.ibatis.annotations.Select;

import com.biz.homepage.model.MemberVO;

public interface MemberDao extends GenericDao<MemberVO, String> {

	@Select("SELECT COUNT(*) FROM tbl_myproject_member")
	public int memberCount();
	
}
