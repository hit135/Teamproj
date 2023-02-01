package com.leftdivision.interior.evaluation.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.leftdivision.interior.attach.dao.IAttachDao;
import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.evaluation.dao.IEvaluationDao;
import com.leftdivision.interior.evaluation.vo.AreaMarkerVO;
import com.leftdivision.interior.evaluation.vo.MarkerVO;
import com.leftdivision.interior.exception.BizNotEffectedException;

@Service
public class EvaluationServiceImpl implements IEvaluationService{
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private IEvaluationDao evaMapper;
	
	@Inject
	private IAttachDao attachMapper;
	
	// 마커 등록
	@Override
	public void registeMarker(MarkerVO marker) throws BizNotEffectedException {
		
		// markerImage에 들어갈 시퀀스 값 가져오기
		int atchNo = evaMapper.getSeNo();
		// markerImage에 그 값 넣어주기
		marker.setMarkerImage(atchNo);
		
		logger.info("marker : " + marker);
		// db에 마커 등록
		int resultCnt = evaMapper.registeMarker(marker);
		// db에 등록 실패시
		if(resultCnt == 0) {
			throw new BizNotEffectedException();
		}
		
		// 마커 키값 가져오기
		String markerKey = evaMapper.getMarkerKey();
		logger.info("markerKey : " + markerKey);
		
		// 파일 정보 등록
		List<AttachVO> attachList = marker.getAttachList();
		if(attachList != null) {
			for(AttachVO attach : attachList) {
				// 여기에 마커 키값을 들고가야되는데..
				attach.setAtchParentNo(markerKey);
				attach.setAtchRegId(marker.getMarkerRegId());
				attachMapper.insertAttach(attach);
			}
		}
		
	}

	// 마커 리스트 가져오기
	@Override
	public List<MarkerVO> getMarkerList() throws BizNotEffectedException {
		List<MarkerVO> markerList = null;
		try {
			markerList = evaMapper.getMarkerList();
		} catch (Exception e) {
			throw new BizNotEffectedException();
		}

		
		return markerList;
	}
	
	// 영역에 맞는 마커 리스트 가져오기
	@Override
	public List<MarkerVO> areaGetMarkerList(AreaMarkerVO areaMarker) throws BizNotEffectedException {
		List<MarkerVO> areaMarkerList = null;
		try {
			areaMarkerList = evaMapper.areaGetMarkerList(areaMarker);
			logger.info("areaMarkerList : " + areaMarkerList);
		} catch (Exception e) {
			throw new BizNotEffectedException();
		}
		
		return areaMarkerList;
	}
	
}
