package edu.xidian.lab.util;

import java.util.List;

/**
 * create bu ybl 2017/10/17
 * ��ҳ����
 * @author Administrator
 *
 */

public class PageBean<T> {
	
	private int allRow; //�ܼ�¼��
	
	private int totalPage; //��ҳ��
	
	private int currentPage; //��ǰҳ
	
	private int pageSize; //ÿҳ��¼��
	
	private int start; //ÿҳ��ѯ����ʼ��¼
	
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	private List<T> list; //��ǰҳ�����ݼ�¼
	
//	private boolean isFirstPage;  //�Ƿ�Ϊ��һҳ
//	
//	private boolean isLastPage; //�Ƿ�Ϊ���һҳ
//	
//	private boolean hasNextPage; //�Ƿ�����һҳ
//	
//	private boolean hasPrePage;  //�Ƿ�����һҳ

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
	 * ��ʼ����ҳ��Ϣ
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
//		return currentPage == totalPage; //��ǰҳ�������һҳ
//	}
//	
//	public boolean hasNextPage(){
//		return currentPage != totalPage;
//	}
//	
//	public boolean hasPrePage(){
//		return currentPage != 1; //��ǰҳ���ǵ�һҳ
//	}
//	
//	/**
//	 * ������ҳ��
//	 */
//	public static int countTotalPage(int pageSize, int allRow){
//		int totalPage = allRow % pageSize == 0 ? allRow/pageSize : allRow/pageSize + 1;
//		return totalPage == 0 ? 1 : totalPage;
//	}
//	
//	/**
//	 * ���㵱ǰҳ��ʼ��¼
//	 */
//	public static int countOffset(int pageSize, int currentPage){
//		int offset = pageSize  * (currentPage - 1);
//		return offset;
//	}
//	
//	/**
//	 * ���㵱ǰҳ
//	 */
//	
//	public static int countCurrentPage(int page){
//		int curPage = (page == 0 ? 1 : page);
//		return curPage;
//	}

}
