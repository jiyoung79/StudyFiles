## 1. Object <br>

> 객체를 생성하는 것은 변수를 정의하고 초기화하는 것으로 시작한다. <br>

> 객체는 한꺼번에 여러 값을 담을 수 있는 통(container)1과 같은 자료구조(data structure) <br>

> 객체 안에는 이름-값 쌍(name-value pair)이 저장되는데, 이를 객체의 속성(property)이라고 한다. <br>

<hr>

* 예시 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/a8f6cdd7-2f44-4875-858a-4adea5b24b49)

> {} : 객체, this. : 현재 만들어진 객체 자체에 있는 속성을 가지고 오기 위한 것
> 주석처리 한 것에 들어있는 것은 버튼으로 만들기 전 콘솔창에 표시하기위해 만들었던 함수들이다.
>  ```
>  tori.name = "뽀삐"; // 이름 바꾸기
   console.log(typeof tori);
   console.log(tori.name+"," + tori.kind+"," + tori.age);
   tori.sound();
   tori.toString();
    ```

<br>

* 결과 - 버튼 : 짖어 를 클릭했을 때 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/1d6c86ac-6b82-4f87-a8a7-47e333a16815)

> 라는 알림이 뜨고 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/d5f36e91-6e36-47ff-bb9d-e6d31954d2c3)

> 콘솔창에는 위와 같이 표시된다. <br>

* 결과 - 버튼 : 정보확인 을 클릭했을 때 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/83093432-332b-4fc1-8206-b8616fec855c)

> 라는 알림이 뜨고 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/2bde01e8-677d-4c8e-897b-b2aaf530cdd0)

> 콘솔창에는 위와 같이 표시된다.
