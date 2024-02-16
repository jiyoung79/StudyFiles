# ProtoType <br>

<br>

## 1. Object 객체 <br>

> 객체를 다루는 기본함수(메서드)를 제공 <br>

> 모든 객체 중 최상위 객체 <br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/9b4e2383-9f24-463a-9703-7bed13110982)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/fdf9c7b2-1301-4949-a26d-668fbf052c93)

<br>
<hr>

## 2. Object.prototype <br>

> 상속 구현에 사용되는 메커니즘, Object 객체 내에 구성 <br>

> 자바스크립트는 클래스의 개념이 없기 때문에 기존의 객체를 복사하여 새로운 객체를 생성하는 프로토타입의 언어이다. <br>

> 자바스크립트의 모든 객체가 상속하는 프로토타입 체인의 최상위의 객체 <br>
> Object.prototype에는 다양한 함수가 정의되어 있음 <br>

### 2-1. Object.prototype 함수 <br>

* toString() : 객체의 정보를 문자열로 변환하여 반환 <br>
* hasownProperty() : 객체가 특정 속성을 직접 소유하고 있는지 여부를 체크(true / false) <br>
* isPrototypeOf() : 객체가 다른 객체의 프로토타입 체인에 존재하는지 여부를 확인 <br>
* ValueOf() : 객체의 원시값 표현을 반환 <br>
* toLocaleString() : 객체를 지역화된 문자열로 변환하여 반환 <br>
* propertyIsEnumerable() : 특정 속성이 열거 가능한 속성인지 여부를 확인 <br>
* Constructor : 객체를 생성한 생성자 함수(객체에 필요한 공간과 객체에 필요한 초기값을 제공하는 함수)를 참조 <br>

<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/e98ff5cc-eabb-4edf-82c2-0e137f5d51e3)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/1aa77d01-225b-4c1a-88aa-18cc9eed4583)

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/900c776e-d93d-4b6c-aad7-9cb12248e627)

<br>
<hr>

* 예제 - 2 ProtoType 상속 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/c112d60f-ea50-4114-9273-f73ee9f348a0)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/254a1dac-6c9e-4b32-b72a-07b0c83843e8)

* 예제 - 2 ProtoType 상속(2) <br>

> 같은 상위프로토타입 생성자를 불러옴

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/18c32def-778a-4d78-9993-a476d6511111)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/d441bcb4-929b-4866-a6eb-089631a6d62e)






















