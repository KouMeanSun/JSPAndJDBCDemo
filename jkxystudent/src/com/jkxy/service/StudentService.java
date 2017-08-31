package com.jkxy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.jkxy.connection.MyConn;
import com.jkxy.model.StudentBean;

public class StudentService {
	private Connection conn;
	private PreparedStatement pstmt;
	public StudentService() {
		super();
		conn =  MyConn.getInstance().getConnection();
	}
	/**
	 * 查询所有学生
	 * @return
	 */
	public List<StudentBean> getStudents(){
		try {
			pstmt = conn.prepareStatement("select * from studentinfo ");
			
			ResultSet rs = pstmt.executeQuery();
			List<StudentBean> students = new ArrayList<StudentBean>();
			while(rs.next()){
				StudentBean bean = new StudentBean();
				bean.setId(rs.getInt("id"));
				bean.setNicheng(rs.getString("nicheng"));
				bean.setTruename(rs.getString("truename"));
				bean.setXb(rs.getInt("xb"));
				bean.setCsrq(rs.getDate("csrq").toString());
				bean.setZy(rs.getString("zy"));
				bean.setKc(rs.getString("kc"));
				bean.setXq(rs.getString("xq"));
				bean.setBz(rs.getString("bz"));
				students.add(bean);
			}
			return students;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 插入学生信息进入表中
	 * @param student
	 * @return
	 */
	public int insertStudent(StudentBean student){
		int i = 0;
		try {
			String url = "insert into studentinfo (nicheng,truename,xb,csrq,zy,kc,xq,bz) values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(url);
			pstmt.setString(1, student.getNicheng());
			pstmt.setString(2, student.getTruename());
			pstmt.setInt(3, student.getXb());
			//DateFormat.parse(String s)
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//小写的mm表示的是分钟
			java.util.Date date=sdf.parse(student.getCsrq());
			
			pstmt.setDate(4, new java.sql.Date(date.getTime()));
			pstmt.setString(5, student.getZy());
			pstmt.setString(6, student.getKc());
			pstmt.setString(7, student.getXq());
			pstmt.setString(8, student.getBz());
			i = pstmt.executeUpdate();
			
	        return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		}
	}
	
	/**
	 * 更新学生信息
	 * @param student
	 * @return
	 */
	public int updateStudent(StudentBean student){
		int i = 0;
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//		String dateStr=sdf.format(student.getCsrq());
		try {
			String sql = "update studentinfo set nicheng = '" +student.getNicheng() + "' , truename = '"+student.getTruename()+"' ,xb = "+student.getXb()+" , csrq = '"+student.getCsrq()+"' , zy = ' "+student.getZy()+"' , kc = '"+student.getKc()+"' , xq = '"+student.getXq()+"' ,bz = '"+student.getBz()+"' where id ="+student.getId();
			pstmt = conn.prepareStatement(sql);
			i = pstmt.executeUpdate();
			 return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		}
	}
	
	/**
	 * 删除学生
	 * @param student
	 * @return
	 */
	public int deleteStudent(StudentBean student){
		int i = 0;
		String sql = "delete from studentinfo where id = "+student.getId();
		
		try {
			pstmt = conn.prepareStatement(sql);
			i  = pstmt.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		}
	}
	
	public int deleteStudentWithId(int id){
		int i = 0;
		String sql = "delete from studentinfo where id = "+id;
		try {
			pstmt = conn.prepareStatement(sql);
			i  = pstmt.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return i;
		}
	}
	
	/**
	 * 根据ID查询所有学生
	 * @return
	 */
	public StudentBean getStudentsWithId(int studentid){
		try {
			String  sql = "select * from studentinfo where id="+studentid;
			pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			StudentBean bean = null;
			while(rs.next()){
			    bean = new StudentBean();
				bean.setId(rs.getInt("id"));
				bean.setNicheng(rs.getString("nicheng"));
				bean.setTruename(rs.getString("truename"));
				bean.setXb(rs.getInt("xb"));
				bean.setCsrq(rs.getDate("csrq").toString());
				bean.setZy(rs.getString("zy"));
				bean.setKc(rs.getString("kc"));
				bean.setXq(rs.getString("xq"));
				bean.setBz(rs.getString("bz"));
			}
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
