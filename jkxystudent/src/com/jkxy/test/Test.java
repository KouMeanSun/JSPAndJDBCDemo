package com.jkxy.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.jkxy.connection.MyConn;
import com.jkxy.model.StudentBean;
import com.jkxy.service.StudentService;

public class Test {
	public static void main(String[] args) {
		//测试数据库连接
		MyConn.getInstance().getConnection();
		StudentService studentService = 	new StudentService();
		//测试增加学生
//		StudentBean student = new StudentBean();
//		student.setNicheng("永不磨灭的番号2");
//		student.setTruename("高明楠");
//		student.setXb(0);
//		String dateString = "2012-12-06 "; 
//		Date date = null;
//		try  
//		{  
//		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");  
//		     date = sdf.parse(dateString);  
//		}  
//		catch (ParseException e)  
//		{  
//		    e.printStackTrace();
//		} 
//		student.setCsrq("1998-08-07");
//		student.setZy("计算机科学与技术");
//		student.setKc("数据结构");
//		student.setXq("吃饭睡觉，打豆豆");
//		student.setBz("一等侯太子太保");
//		studentService.insertStudent(student);
		
		//测试修改学生信息
//		StudentBean updateStudent = new StudentBean();
//		updateStudent.setNicheng("Lyli");
//		updateStudent.setTruename("小罗莉");
//		updateStudent.setXb(1);
//		String dateString2 = "2017-12-06 "; 
//		Date date2 = null;
//		try  
//		{  
//		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");  
//		     date2 = sdf.parse(dateString2);  
//		}  
//		catch (ParseException e)  
//		{  
//		    e.printStackTrace();
//		} 
//		updateStudent.setCsrq("1997-02-14");
//		updateStudent.setZy("计算机");
//		updateStudent.setKc("数据");
//		updateStudent.setXq("吃饭睡觉");
//		updateStudent.setBz("一等侯");
//		updateStudent.setId(6);
//		studentService.updateStudent(updateStudent);
		
		//测试删除学生
//		StudentBean deleteStudent = new StudentBean();
//		deleteStudent.setId(4);
//		studentService.deleteStudent(deleteStudent);
		
		//测试查看学生
		List<StudentBean> list = studentService.getStudents();
		System.out.println("list.size:"+list.size());
		for(int i=0;i<list.size();i++){
			StudentBean bean = (StudentBean)list.get(i);
			System.out.println("student:"+bean.toString());
		}
		
		//测试根据id查询学生
//	  StudentBean studentById = 	studentService.getStudentsWithId(6);
//		System.out.println(studentById);
	}
}
