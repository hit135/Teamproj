package com.leftdivision.interior.prod.service;

import java.util.List;

import com.leftdivision.interior.exception.BizNotEffectedException;
import com.leftdivision.interior.exception.BizNotFoundException;
import com.leftdivision.interior.prod.vo.ProdVO;

public interface IProdService {

	List<String> getSubCategory(String category) throws BizNotEffectedException;

	List<ProdVO> getProdTopList(String category) throws BizNotEffectedException;

	List<ProdVO> getProdList(ProdVO prodVO);

	ProdVO getProdView(String prodDetailId) throws BizNotEffectedException, BizNotFoundException;

}
