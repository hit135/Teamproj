package com.leftdivision.interior.evaluation.service;

import java.util.List;

import com.leftdivision.interior.evaluation.vo.AreaMarkerVO;
import com.leftdivision.interior.evaluation.vo.MarkerVO;
import com.leftdivision.interior.exception.BizNotEffectedException;

public interface IEvaluationService {
	/**
	 * registeMarker
	 * @param markerVO
	 * @author hgp
	 * @throws BizNotEffectedException 
	 */
	void registeMarker(MarkerVO marker) throws BizNotEffectedException;

	/**
	 * get marker List
	 * @return List<MarkerVO>
	 * @author hgp
	 * @throws BizNotEffectedException 
	 */
	List<MarkerVO> getMarkerList() throws BizNotEffectedException;
	
	/**
	 * get marker List in Area
	 * @param areaMarker
	 * @return List<MarkerVO>
	 * @author hgp
	 * @throws BizNotEffectedException 
	 */
	List<MarkerVO> areaGetMarkerList(AreaMarkerVO areaMarker) throws BizNotEffectedException;
	
}
