## 배열관련 함수(메서드) <br>

<br>

* 예시 1 - JS배열은 동적확장이 가능하다. <br>

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

* 예시 2 - 요소탐색(반복문) <br>

> 먼저 요소탐색 반복문의 기본 구조는 ```  for(초기값; 조건식; 탈출연산){} ``` 이다. <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/5bd2b9fd-f1fb-4b67-84f0-5263d01b8022)

<br>

* 결과

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/0fb7e421-1c5e-437d-ba1c-02d2419f6769)



## 1. Push <br>

> 끝에 요소를 추가한다.

