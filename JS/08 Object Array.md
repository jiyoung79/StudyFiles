# 배열관련 함수(메서드) <br>

<br>

* 예제 1 - JS배열은 동적확장이 가능하다. <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/a6c68601-a872-43eb-bf7a-b0c79d76a687)

<br>

* 결과

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/d55fb51c-e7c5-4f93-948e-a0bc843397f0)

```
console.log(typeof arr); 로 object가 출력되고
문자열이 차례대로 출력된 후
추가되기 전 배열의 길이인 'size : 7'이 출력

arr[7] = 202;
arr[8] = {owner:'강지영', model:'투싼'};
인 배열을 추가했기 때문에
추가 후 배열 추가 후 길이인 'size : 9'가 출력된다.
```

<br>
<hr>

* 예제 2 - 요소탐색(반복문) <br>

> 먼저 요소탐색 반복문의 기본 구조는 ``` for(초기값; 조건식; 탈출연산){} ``` 이다. <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/5bd2b9fd-f1fb-4b67-84f0-5263d01b8022)

<br>

* 결과

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/0fb7e421-1c5e-437d-ba1c-02d2419f6769)

<br>
<hr>

## 1. Push <br>

> 배열의 끝에 요소를 추가한 후, 변경된 배열의 길이를 반환한다. <br>

<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/6b67d2df-2112-40df-9e51-a89103fcf190)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/60f31eea-3a11-4231-a4dd-e3d3040d02ff)

```
let arr = ['a', 'b', null, 'true', 30, 50.5, {name : '홍길동', age : 55}]; 이다.
먼저 arr의 길이를 물었기 때문에 arr.length는 7으로 나온다.
그리고 arr.push(1234)로 인해 배열의 마지막 순서 뒤에 1234가 추가되는 것을 확인할 수 있다.
push로 끝에 요소를 추가하였기 때문에 추가 후 총 배열의 길이는 8이 된다.
```

<br>
<hr>

## 2. POP <br>

> 배열의 마지막 요소를 제거한 후, 제거한 요소를 반환한다. <br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/8bb33503-b3d4-4280-8e8f-da1bd4d21255)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/dbaafa20-25f5-4500-a2bf-722b453b8f0e)

```
let arr = ['a', 'b', null, 'true', 30, 50.5, {name : '홍길동', age : 55}]; 이다.
처음 길이는 7이다.
하지만 pop을 사용하였기 때문에 pop 사용 후 두번째로 표시된 길이는 6이 되는 것을 알 수 있다.
```

<br>
<hr>

## 3. Foreach <br>

> 배열에 활용이 가능한 메서드로, 파라미터로 주어진 함수를 배열 요소 각각에 대해 실행하는 메서드이다. <br>
> map() 메서드와 거의 비슷하지만 차이점은 따로 return 하는 값이 없다는 점이다. <br>
<br>

``` function(){} == ()=>{} ``` <br>
``` arr.forEach((요소)=>{처리되는 로직}); ```

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/e293c5cb-057c-48c6-ac4c-7db660344867)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/dd0d37fe-b669-4079-b565-35496d0d19b4)

<br>
<hr>

## 4. Sort <br>

> 배열을 정열하기 위한 함수 <br>
> 기본 sort 함수는 요소를 문자열로 변환 이후 사전편찬순서대로 오름차순 정렬 <br>

```
배열이름.sort((a,b)=>{
            return a-b;         // 오름차순
            // return b-a;      => 내림차순
        });         
```

<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/0c1d6e53-a212-4cb8-bc81-3fefa765c221)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/8db9d930-3ea5-465c-91d4-39ea7cd00b63)

```
arr2 에서 배열의 element들은 문자열로 취급되어, 유니코드 값 순서대로 정렬된다.
arr3에서는 item에 따로 조건을 두지 않았기 때문에 foreach로 불러왔을 때 모두 나타난다.
그리고 return a-b가 사용되었기 때문에 오름차순으로 정렬된다.
```

<br>
<hr>

## 5. Filter <br>

> 조건식을 만족하는 요소만 필터링해서 따로 배열에 저장한다.<br>
> 배열에서만 쓸 수 있다.<br>

<br>

* 예제 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/6eb076aa-5121-42eb-908d-aba96e286199)

<br>

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/24101b82-aeca-4b90-b2b0-8d22ff9d6869)

```
let filteredArr는 arr4에서 자료형이 object에 해당되는 것들을 배열로 만든다.
typeof item == 'object' 는 {name : '스몰더', age : 99}, null, {name : '티모', age : 555} 를 뜻하기 때문에
console.log로 불러왔을 때 위의 세개가 출력된다.
 let FA는 arr4에서 자료형이 number에 해당되는 것들을 배열로 만든다.
typeof item == 'number'는 10, 15.2, 1, 99, 160 을 뜻한다.
그리고 sort를 통해 오름차순으로 정렬하여 foreach로 출력되어서 콘솔창에는 위와 같이 출력된다.
```


