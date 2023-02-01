package com.leftdivision.interior.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.leftdivision.interior.attach.dao.IAttachDao;
import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.board.dao.IBoardDao;
import com.leftdivision.interior.board.vo.BoardSearchVO;
import com.leftdivision.interior.board.vo.BoardVO;
import com.leftdivision.interior.exception.BizNotEffectedException;

@Service("boardService")
public class BoardServiceImpl implements IBoardService {

	@Inject
	private IBoardDao boardDao; 
	
	@Inject
	private IAttachDao attachDao;
	
	@Override
	public List<BoardVO> getBoardList(BoardSearchVO searchVO) throws BizNotEffectedException {
		int totalRowCount = boardDao.getTotalRowCount(searchVO);
		
		searchVO.setTotalRowCount(totalRowCount);
		searchVO.pageSetting();
		System.out.println("searchVO.toString() "+ searchVO.toString());
		
		List<BoardVO> BoardList = boardDao.getBoardList(searchVO);
		
		if(BoardList == null) {
			throw new BizNotEffectedException();
		}
		return BoardList;
	}

	@Override
	public void boardWrite(BoardVO board) throws BizNotEffectedException {
		
		// 게시글 비밀번호 대신 본인 인지 확인
		int checkInt = boardDao.checkUser(board);
//		System.out.println("checkInt : " + checkInt);
		if(checkInt == 0) {
			System.out.println("게시글 작성했던 유저가 아님");
			throw new BizNotEffectedException();
		}

		String boNo = boardDao.getFreeBoardKey();
		System.out.println("boNo: "+ boNo);
		board.setBoastNumber(boNo);
		
		int resultCnt = boardDao.insertBoard(board);
		
		if(resultCnt != 1) {
			throw new BizNotEffectedException();
		}
		
		// 파일 정보 등록
		List<AttachVO> attachList = board.getAttachList();
//		System.out.println("attachList check : " + attachList);
		if(attachList != null) {
			for(AttachVO attach : attachList) {
				attach.setAtchParentNo(boNo);
				attach.setAtchRegId(board.getBoastWriter());
				attachDao.insertAttach(attach);
			}
		}
		
		
		
	}
	
}
