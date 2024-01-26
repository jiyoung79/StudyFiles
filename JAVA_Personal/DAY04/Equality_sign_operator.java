package day04;

public class Equality_sign_operator {
	public static void main(String[] args) {
		double a = 3.14;
		double b = 5.15;
		System.out.println(a==b);
		System.out.println(a!=b); 	// a와 b가 다른가
		
		String c1 = "Hello JAVA!";
		System.out.println(c1 == "Hello JAVA!");
		System.out.println(c1.equals("Hello JAVA!"));
		// 문자열 비교시 등가비교연산자(==)를 사용하지 않는다. (틀린것은 아니지만 사용하진 않음)
		// String 문자열클래스 안에 있는 메서드(기능):equals  문자열.equals (비교문자열)
		// 문자열은 대소문자를 구분한다.

	}

}

/*
Console

false
true
true
true

*/
