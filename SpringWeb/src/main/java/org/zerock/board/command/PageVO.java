package org.zerock.board.command;

public class PageVO {
	
	private int startPage;
	private int endPage;
	
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	// 필드생성자. 기본생성자X
	public PageVO(Criteria cri, int total) {
		this.total = total;
		this.cri = cri;
		
		// endPage
		// 공식 : (int)Math.ceil(페이지번호/(double)한번에 보여질 페이지 수)*한번에 보여질 페이지 수;
		this.endPage = (int)Math.ceil(cri.getPageNum()/(double)10)*10;
		
		// startPage
		// 공식 : endPage - 한번에 보여질 페이지 개수 +1
		this.startPage = endPage-10+1;
		
		// realEnd : endPage보다 실제 페이지의 끝번호가 큰 경우, 작은 경우(endPage = realEnd)...
		int realEnd = (int)Math.ceil(total/(double)cri.getCount());
		
		if(this.endPage > realEnd) {	// 작은 경우 (endPage = realEnd)
			this.endPage = realEnd;
		}
		
		// 이전 버튼
		this.prev = this.startPage > 1;	//활성화 여부
		// 다음 버튼
		this.next = realEnd> this.endPage;	//활성화 여부
		
		System.out.println("[endPage] : "+endPage);
		System.out.println("[tartPage] : "+startPage);
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
}
