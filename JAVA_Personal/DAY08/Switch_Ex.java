package day08;

public class Switch_Ex {
	public static void main(String[] args) {
		// 일년동안 읽은 책 수에 따라 멘트를 출력
		int book=11;
		book = book/10;
		switch(book) {
		case 0:	//10권 미만 
			System.out.println("조금 더 노력하세요");
		case 1:	//10<=book<20
			System.out.println("책 읽는 것을 즐기시는 분이시네요!");
		case 2:	//20<=book<30
			System.out.println("책을 사랑하는 분이시네요!");
		default:	//30<=book
			System.out.println("당신은 다독왕입니다.");
			
		}

	}

}

/*
Console
이 셋 중에 랜덤으로 나옴

☆★Random choosing Pokemon☆★
1. 피카츄
2. 꼬부기
3. 이상해씨
선택된 번호:3
이상해씨가 선택되었습니다.

☆★Random choosing Pokemon☆★
1. 피카츄
2. 꼬부기
3. 이상해씨
선택된 번호:2
꼬부기가 선택되었습니다.

☆★Random choosing Pokemon☆★
1. 피카츄
2. 꼬부기
3. 이상해씨
선택된 번호:1
피카츄가 선택되었습니다.




*/
