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

책 읽는 것을 즐기시는 분이시네요!
책을 사랑하는 분이시네요!
당신은 다독왕입니다.


*/
