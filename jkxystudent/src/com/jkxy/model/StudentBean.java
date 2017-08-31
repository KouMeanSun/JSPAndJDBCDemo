package com.jkxy.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StudentBean {
	private int id;
	private String  nicheng;
	private String  truename;
	private int	    xb;
	private String    csrq;
	private String  zy;
	private String  kc;
	private String  xq;
	private String  bz;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNicheng() {
		return nicheng;
	}
	public void setNicheng(String nicheng) {
		this.nicheng = nicheng;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public int getXb() {
		return xb;
	}
	public void setXb(int xb) {
		this.xb = xb;
	}
	
	
	public String getCsrq() {
		return csrq;
	}
	public void setCsrq(String csrq) {
		this.csrq = csrq;
	}
	public String getZy() {
		return zy;
	}
	public void setZy(String zy) {
		this.zy = zy;
	}
	public String getKc() {
		return kc;
	}
	public void setKc(String kc) {
		this.kc = kc;
	}
	public String getXq() {
		return xq;
	}
	public void setXq(String xq) {
		this.xq = xq;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	@Override
	public String toString() {
		return "StudentBean [id=" + id + ", nicheng=" + nicheng + ", truename=" + truename + ", xb=" + xb + ", csrq="
				+ csrq + ", zy=" + zy + ", kc=" + kc + ", xq=" + xq + ", bz=" + bz + "]";
	}
	
	
	
}
