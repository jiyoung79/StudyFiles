package day07;

public class If_else {
	public static void main(String[] args) {
		int age = 15;
		if(age>19) {
			System.out.println("성인입니다.");
			System.out.println("성인 요금이 적용됩니다.");
		} 
		else { //age<=10
			System.out.println("미성년자입니다.");
			System.out.println("청소년 요금이 적용됩니다.");
		}
		System.out.println("결제를 진행해 주세요.");
	}
}

/*
Console

미성년자입니다.
청소년 요금이 적용됩니다.
결제를 진행해 주세요.

*/
