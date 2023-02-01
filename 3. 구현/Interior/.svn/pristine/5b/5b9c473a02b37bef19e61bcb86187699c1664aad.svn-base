package com.leftdivision.interior.prod.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.leftdivision.interior.prod.vo.ProdVO;

@Mapper
public interface IProdDao {

	List<String> getSubCategory(String category);

	List<ProdVO> getProdTopList(String category);

	String getCategoryId(String category2);

	List<ProdVO> getProdList(ProdVO prodVO);

	ProdVO getProdView(String prodDetailId);

	List<String> getProdDetailContents(String prodDetailId);

}
