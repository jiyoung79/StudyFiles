[참고자료](https://ko.javascript.info/type-conversions)

## 1. Number : 수(정수/실수) <br>

- Number.MAX_VALUE보다 큰 양수값은 +Infinity로 변환된다. <br>
- Number.MIN_VALUE보다 작은 양수값은 +0으로 변환된다. <br>
- Number.MAX_VALUE보다 작은 음수값은 -Infinity로 변환된다. <br>
- Number.MIN_VALUE보다 큰 음수값은 -0으로 변환된다. <br>

### NaN <br>

> NaN ("Not a Number")는 산술 연산의 결과를 숫자로 표현할 수 없을 때, 일반적으로 발생하는 특별한 종류의 숫자 값이다. <br> 
> 또한, "NaN" 자기 자신과 같지 않은 JavaScript의 유일한 값이다. <br>

<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/6f0d4e6c-8384-45f4-bd68-e5e1883e206a)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/13453669-8b3d-41fb-b439-3f628d7c6c1a)

<br>
<hr>

## 2. String : 문자열 <br>


<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/64f72aaa-ee07-4a13-babd-8b5350602aef)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/38f7246e-a213-40ec-939f-f9cf5c08cce0)

```
* typeof = 해당 요소의 자료형을 묻는 것
```

* type과 typeof return value

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/630c8c12-df2d-47df-8729-8506a780d7c6)


<br>
<hr>

## 3. Object : {key:value} <br>


<br>

* 예제 <br>


<br>

* 결과 <br>

<br>
<hr>

## 4. Boolean : true / false <br>

<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/94dc454a-5c26-4b50-9b35-0483e7ad7d3d)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/df7cae06-0912-444d-abbb-4175073823a6)

<br>
<hr>

## 5. Null / Undefined <br>

- null : 정의, Null 타입은 null이라는 오직 하나의 값만 가질 수 있다. <br>
- undefined : 선언, Undefined 타입은 undefined이라는 오직 하나의 값만 가질 수 있다. <br>

> Array.prototype.find() 및 Map.prototype.get()와 같은 대부분의 메서드는, 요소를 찾을 수 없을 때 undefined를 반환한다. <br>
> Object.getPrototypeOf(), Object.create() 등 프로토타입과 상호 작용하는 메서드는 undefined 대신 null을 받거나 반환한다. <br>


<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/d7182cfc-a44f-4791-9e43-2f0c3fe41dce)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/11ddb65d-2ef5-40dc-9e7d-024a0adde122)

