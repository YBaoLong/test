package edu.xidian.lab.util;

import java.util.List;

/**
 * create bu ybl 2017/10/17
 * 分页功能
 * @author Administrator
 *
 */

public class PageBean<T> {
	
	private int allRow; //总记录数
	
	private int totalPage; //总页数
	
	private int currentPage; //当前页
	
	private int pageSize; //每页记录数
	
	private int start; //每页查询的起始记录
	
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	private List<T> list; //当前页的数据记录
	
//	private boolean isFirstPage;  //是否为第一页
//	
//	private boolean isLastPage; //是否为最后一页
//	
//	private boolean hasNextPage; //是否有下一页
//	
//	private boolean hasPrePage;  //是否有上一页

	public int getAllRow() {
		return allRow;
	}

	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
	
	/**
	 * 初始化分页信息
	 */
//	public void init(){
//		this.isFirstPage = isFirstPage();
//		this.isLastPage = isLastPage();
//		this.hasNextPage = hasNextPage();
//		this.hasPrePage = hasPrePage();
//	}
//	
//	public boolean isFirstPage(){
//		return currentPage == 1;
//	}
//	
//	public boolean isLastPage(){
//		return currentPage == totalPage; //当前页等于最后一页
//	}
//	
//	public boolean hasNextPage(){
//		return currentPage != totalPage;
//	}
//	
//	public boolean hasPrePage(){
//		return currentPage != 1; //当前页不是第一页
//	}
//	
//	/**
//	 * 计算总页数
//	 */
//	public static int countTotalPage(int pageSize, int allRow){
//		int totalPage = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize + 1;
//		return totalPage == 0 ? 1 : totalPage;
//	}
//	
//	/**
//	 * 计算当前页开始记录
//	 */
//	public static int countOffset(int pageSize, int currentPage){
//		int offset = pageSize  * (currentPage - 1);
//		return offset;
//	}
//	
//	/**
//	 * 计算当前页
//	 */
//	
//	public static int countCurrentPage(int page){
//		int curPage = (page == 0 ? 1 : page);
//		return curPage;
//	}

}
