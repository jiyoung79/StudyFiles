package day08;

import java.util.Random;

public class Pokemon {
	public static void main(String[] args) {
		Random random = new Random();
		System.out.println("☆★Random choosing Pokemon☆★");
		System.out.println("1. 피카츄");
		System.out.println("2. 꼬부기");
		System.out.println("3. 이상해씨");
		
		int mypokemon=random.nextInt(3)+1;	//0~2, 1~3
		System.out.println("선택된 번호:"+mypokemon);
		switch(mypokemon) {
		case 1:
			System.out.println("피카츄가 선택되었습니다.");
			break;
		case 2:
			System.out.println("꼬부기가 선택되었습니다.");
			break;
		case 3:
			System.out.println("이상해씨가 선택되었습니다.");
			break;
		}
		
	}

}
