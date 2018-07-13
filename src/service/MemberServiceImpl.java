package service;

import java.util.List;

import dao.MemberDAOImpl;
import domain.MemberBean;

public class MemberServiceImpl implements MemberService{
	private static MemberService instance = new MemberServiceImpl();
	public static MemberService getinstance() {return instance;}
	private MemberServiceImpl() {}
	
	
	
	@Override
	public void createMember(MemberBean member) {
		MemberDAOImpl.getinstance().insertMember(member);
		
	}

	@Override
	public void updateMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<MemberBean> listMember() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<MemberBean> searchByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public MemberBean searchById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int countMember() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public boolean login(MemberBean member) {
		return (MemberDAOImpl.getinstance().login(member)!=null);
	}

}
