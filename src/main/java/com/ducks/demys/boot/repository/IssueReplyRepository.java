package com.ducks.demys.boot.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ducks.demys.boot.vo.IssueReply;

@Mapper
public interface IssueReplyRepository {

<<<<<<< HEAD
   public List<IssueReply> getIssueReplyListByISSUE_NUM(int ISSUE_NUM);
   
   public IssueReply getIssueByISSUERE_NUM(int ISSUERE_NUM);
   
   public int selectIssueReplyequenceNextValue();
   
   public void registIssueReply(IssueReply issuere);
   
   public void modifyIssueReply(IssueReply issuere);
   
   public void removeIssueReply(int ISSUERE_NUM);

   public int gethowmanyreply(int ISSUE_NUM);
   
=======
	public List<IssueReply> getIssueReplyListByISSUE_NUM(int ISSUE_NUM);

	public IssueReply getIssueByISSUERE_NUM(int ISSUERE_NUM);

	public int selectIssueReplyequenceNextValue();

	public void registIssueReply(IssueReply issuere);

	public void modifyIssueReply(IssueReply issuere);

	public void removeIssueReply(int ISSUERE_NUM);

>>>>>>> cf242679be83e71fd573ddbb5d44b847021bb44f
}