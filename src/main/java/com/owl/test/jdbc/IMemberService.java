package com.owl.test.jdbc;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.owl.test.dto.MemberDTO;

@Mapper
public interface IMemberService {

	public List<MemberDTO> selectAll();
	
}
