package com.ducks.demys.boot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ducks.demys.boot.repository.IssueRepository;
import com.ducks.demys.boot.repository.Issue_TagRepository;
import com.ducks.demys.boot.vo.Issue;
import com.ducks.demys.boot.vo.Issue_Tag;

@Service
public class IssueService {

	private IssueRepository issueRepository;
	private Issue_TagRepository issue_TagRepository;

	public IssueService(IssueRepository issueRepository, Issue_TagRepository issue_TagRepository) {
		this.issueRepository = issueRepository;
		this.issue_TagRepository = issue_TagRepository;
	}

//   public List<Issue> getIssueList(){
//      return issueRepository.getIssueList();
//   }

	public List<Issue> getIssueListForDashboard() {
		return issueRepository.getIssueListForDashboard();
	}

	public List<Issue> getIssueListForBottomDashboard(int MYISSUE, String SORT) {
		List<Issue> issueList = issueRepository.getIssueListForBottomDashboard(MYISSUE, SORT);
		if (issueList != null && issueList.size() > 0) {
			for (Issue issue : issueList) {
				List<Issue_Tag> tagList = issue_TagRepository.getIssue_TagByListISSUE_NUM(issue.getISSUE_NUM());
				issue.setTagList(tagList);
			}
		}
		return issueList;
	}

//   public List<Issue> getIssueListByMEMBER_NUM(int MEMBER_NUM){
//      return issueRepository.getIssueListByMEMBER_NUM(MEMBER_NUM);
//   }

	public Issue getIssueByISSUE_NUM(int ISSUE_NUM) {
		return issueRepository.getIssueByISSUE_NUM(ISSUE_NUM);
	}

	public void registIssue(Issue issue) {
		issue.setISSUE_NUM(issueRepository.selectIssueSequenceNextValue());
		issueRepository.registIssue(issue);
	}

	public void modifyIssue(Issue Issue) {
		issueRepository.modifyIssue(Issue);
	}

	public void removeIssue(int ISSUE_NUM) {
		issueRepository.removeIssue(ISSUE_NUM);
	}

	public List<Issue> getIssueListByPJ_NUM(int PJ_NUM) {
		return issueRepository.getIssueListByPJ_NUM(PJ_NUM);
	}

}