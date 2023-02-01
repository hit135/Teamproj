package com.leftdivision.interior.board;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.board.service.IBoardService;
import com.leftdivision.interior.board.vo.BoardSearchVO;
import com.leftdivision.interior.board.vo.BoardVO;
import com.leftdivision.interior.common.util.LDFileUpload;
import com.leftdivision.interior.common.vo.ResultMessageVO;
import com.leftdivision.interior.exception.BizNotEffectedException;

@Controller
public class BoardController {

	@Resource(name="boardService")
	IBoardService boardService;
	
	@Autowired
	private ResultMessageVO resultMessageVO;
	
	@Autowired
	private LDFileUpload LDFileUpload;
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping("/boardList")
	public String boardList(@ModelAttribute("BoardSearchVO") BoardSearchVO searchVO, Model model) {

		try{
			List<BoardVO> BoardList = boardService.getBoardList(searchVO);
			model.addAttribute("BoardList", BoardList);
//			System.out.println("BoardList2 : " + BoardList);
			logger.info("boardList: " + BoardList);
			
		}catch(BizNotEffectedException bne){
			model.addAttribute("bne", bne);
			bne.printStackTrace();
		}catch(Exception de){
			model.addAttribute("de", de);
			de.printStackTrace();
		}
		return "board.boardList";
	}
	
	@RequestMapping("/boardForm")
	public String boardForm(@ModelAttribute("Board") BoardVO Board) {
		
		return "board.boardForm";
	}
	
	@RequestMapping("/boardWrite")
	public String boardWrite(@ModelAttribute("Board") BoardVO Board
								, Model model
	 , MultipartHttpServletRequest mRequest ) {

		List<MultipartFile> fileList = mRequest.getFiles("boFiles");
//		System.out.println("fileList : " + fileList);
		MultipartFile[] boFiles = new MultipartFile[fileList.size()];
//		boFiles에 화면단에서 받아온 boFiles를 넣어줌
		for(int i = 0; i < fileList.size(); i++) {
			boFiles[i] = fileList.get(i);
//			System.out.println("boFiles[i] : " + boFiles[i]);
		}
		
//		 파일 업로드 실패 성공 불리언값
		boolean fileUploadFlag = true;

		List<AttachVO> attachList = null;

		if(boFiles != null && boFiles[0].getSize() > 0 && !boFiles[0].getOriginalFilename().equals("")) {
//			 boFiles, db에 있는거, 폴더명
			try {
				attachList = LDFileUpload.fileUpload(boFiles, "boast_Board" , "board");
				// 	Board에 attachList를 같이 넣어주기
				Board.setAttachList(attachList);
				
//				System.out.println("Board : " + Board);
//				System.out.println("attachList : " + attachList);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				fileUploadFlag = false;
			}
		}

			try{
				if(Board.getBoastTitle() != null && !Board.getBoastTitle().equals("") ) {
					System.out.println("Board : " + Board);
					boardService.boardWrite(Board);
				}else {
					throw new Exception();
				}

			if(fileUploadFlag) {
				
				return "redirect:/boardList";
			}else {
				resultMessageVO.failSetting(false, "파일업로드실패", "게시글은 등록 되었으나, 파일이 업로드 되지 못하였습니다."
												  + "전산실에 문의해주세요 042)719-8850");
			}



		}catch(BizNotEffectedException bne){
			bne.printStackTrace();
			resultMessageVO.failSetting(false, "게시글 등록 실패", "게시글 등록에 실패했습니다."
					+ " 전산실로 문의해주세요 042)719-8850");
		}catch(Exception de){
			de.printStackTrace();
			resultMessageVO.failSetting(false, "게시글 등록 실패", "게시글 등록에 실패했습니다."
					+ " 전산실로 문의해주세요 042)719-8850");
		}
			model.addAttribute("resultMessageVO", resultMessageVO);
			return "/common/message";
	
	}
}