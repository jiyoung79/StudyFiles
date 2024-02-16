[참고자료](https://ko.javascript.info/type-conversions)

# 형변환 <br>

> 함수와 연산자에 전달되는 값은 대부분 적절한 자료형으로 자동 변환됨 <br>

> alert가 전달받은 값의 자료형과 관계없이 이를 문자열로 자동 변환하여 보여주는 것이나, 수학 관련 연산자가 전달받은 값을 숫자로 변환하는 경우가 형 변환의 대표적인 예시이다. <br>

> 이 외에, 전달받은 값을 의도를 갖고 원하는 타입으로 변환(명시적 변환)해 주는 경우도 형 변환이라고 할 수 있다. <br>

### 숫자형으로 변환 시 적용되는 규칙 <br>

* undefined	      : NaN <br>
* null	          : 0 <br>
* true and false	: 1 과 0 <br>
* string	        : 문자열의 처음과 끝 공백이 제거 / 공백 제거 후 남아있는 문자열이 없다면 0, 그렇지 않다면 문자열에서 숫자를 읽음. 변환에 실패하면 NaN이 됨 <br>

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

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/7f3b66ad-2b62-44d8-9faf-efa5595f9179)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/ba55001f-f3e8-4a57-8e38-e7862dc0e534)

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

