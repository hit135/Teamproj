package com.leftdivision.interior.evaluation;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.common.util.LDFileUpload;
import com.leftdivision.interior.common.vo.ResultMessageVO;
import com.leftdivision.interior.evaluation.service.IEvaluationService;
import com.leftdivision.interior.evaluation.vo.AreaMarkerVO;
import com.leftdivision.interior.evaluation.vo.MarkerVO;
import com.leftdivision.interior.exception.BizNotEffectedException;
import com.leftdivision.interior.exception.BizNotFoundException;

@Controller
@RequestMapping("/evaluation")
public class EvaluationController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private ResultMessageVO resultMessageVO;
	
	@Inject
	private LDFileUpload ldFileUpload;
	
	@Inject
	private IEvaluationService evaService;
	
	// 집 평가 메인 페이지
	@RequestMapping("/Map")
	public String map(Model model, HttpServletRequest request) {
		// 세션 불러오기
		HttpSession session = request.getSession();
		// 마커 리스트 가져오기
		List<MarkerVO> markerList;
		try {
			markerList = evaService.getMarkerList();
			logger.info("markerList : " + markerList);
			session.setAttribute("markerList", markerList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 지도 시작 위치 지정 >> 세션에 담자
		/*
		MarkerVO regMarker = new MarkerVO();
		regMarker.setMarkerLat("36.326725");
		regMarker.setMarkerLongt("127.407470");
		session.setAttribute("regMarker", regMarker);
		*/
		
		return "evaluation.evaluationMap";
	}
	
	// 리다이렉트 맵
	@RequestMapping("/reMap")
	public String reMap() {
		
		return "evaluation.evaluationMap";
	}
	
	// 마커 등록
	@RequestMapping("/registeMarker")
	public String registeMarker(@ModelAttribute MarkerVO marker, Model model,
									HttpServletRequest request,
									MultipartFile[] homePhoto) {
		
		// 파일 업로드!
		logger.info("homePhoto : " + homePhoto);
		// 파일 업로드 실패 성공 불리언값
		boolean fileUploadFlag = true;
		
		List<AttachVO> attachList = null;
		if(homePhoto != null) {
			// boFiles, db에 있는거, 폴더명
			try {
				attachList = ldFileUpload.fileUpload(homePhoto, "HOMEPHOTO" , "homePhoto");
				// freeBoard에 attachList를 찡겨주면 편하지 않을까?
				marker.setAttachList(attachList);
				
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				fileUploadFlag = false;
			}
		}
		
		// 마커 등록
		try {
			// 마커 데이터 null 체크, url 들어온 사람들 제한
			if(marker.getMarkerTitle() != null && ! marker.getMarkerTitle().equals("")) {
				// 마커 등록
				evaService.registeMarker(marker);
			}else {
				throw new BizNotFoundException();
			}
			// 이미지 등록 성공, 실패시
			if(fileUploadFlag) {
				// 세션에 담기
				HttpSession session = request.getSession();
				session.setAttribute("regMarker", marker);
				return "redirect:/evaluation/Map";
			}else {
				resultMessageVO.failSetting(false, "마커 등록 성공, 이미지 업로드 실패", "마커는 등록 되었으나, 이미지가 업로드 되지 못하였습니다."
						  + "전산실에 문의해주세요 010-4403-9382");
			}
		} catch (BizNotFoundException bnfe) {
			bnfe.printStackTrace();
			resultMessageVO.failSetting(false, "마커 등록 실패", "마커에 대한 데이터가 없습니다. 마커 정보를 다시 입력해주세요");
		} catch (BizNotEffectedException bne) {
			bne.printStackTrace();
			resultMessageVO.failSetting(false, "마커 등록 실패", "마커 등록에 실패했습니다. 전산실에 문의해주세요. 010-4403-9382");
		} catch (Exception e) {
			e.printStackTrace();
			resultMessageVO.failSetting(false, "마커 등록 실패", "마커 등록에 실패했습니다. 전산실에 문의해주세요. 010-4403-9382");
		}

		// 실패 메세지 담아주기
		model.addAttribute("resultMessageVO", resultMessageVO);
		
		return "/common/message";
	}
	
	// 영역에 맞는 데이터 뽑아오기
	@RequestMapping("/areaData")
	@ResponseBody
	public List<MarkerVO> areaData(@ModelAttribute AreaMarkerVO areaMarker){
		List<MarkerVO> areaMarkerList = null;
		try {
			// 영역에 맞는 데이터 뽑아오기
			areaMarkerList = evaService.areaGetMarkerList(areaMarker);
			logger.info("areaMarkerList" + areaMarkerList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return areaMarkerList;
	}
	
	
	
	
	
}
