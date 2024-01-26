package day03;

public class DataType {
	public static void main(String[] args) {
		int a = 65;
		float f = a;	//묵시적형변환(자동형변환)
		System.out.println(f);
		char c = (char)a;	//명시적형변환(강제형변환)
		System.out.println(c);
		// 아스키코드값 : 문자마다 고유한 숫자값을 부여 A=65, a=97
		// 강제형변환 방법? (자료형)변수명;

	}

}

// -------------------------------------------------
// Console
// 65.0
// A
