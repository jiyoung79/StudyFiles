# document <br>

<hr>

## * document 의 주요 메서드 <br>

```
getElementById() : 아이디명으로 첫 번째 DOM 객체 리턴

getElementsByTagName() : 특정 태그명을 가진 모든 태그 컬랙션 형태로 리턴

getElementsByClassName() : 특정 클래스명을 가진 모든 태그 컬렉션 형태로 리턴

open() : 콘텐츠를 모두 지우고 새로운 HTMl 콘텐츠를 쓸 수 있도록 열기

write(), writeln() : document에 HTML 콘텐츠 삽입. ln이 붙은 건 write() 후 '\n' 추가출력(브라우저 상에는 빈칸 하나) 줄바꿈하려면 '<br>'을 써야함

close() : document 객체에 있는 HTML 콘텐츠를 브라우저에 출력하고, 더이상 쓰기를 받지 않음
```

<hr>

## 01. document.write 함수 <br>

> 말 그대로 괄호 안에 들어가있는 것을 페이지에 "쓰는(출력하는)" 함수 <br>

* 예시 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/5e09394b-1f6d-4cb9-9332-e26e936bbe94)

* 결과 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/fa40d07e-c545-409d-9f33-0755cc351f8a) 

> 여기서 버튼을 누르게 되면 <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/933c4dba-ddb7-4860-9e06-b5324e02bbd0)

> 첫 줄의 console.log(document) 때문에 콘솔창에는 다음과 같이 출력된다. <br>

![image](https://github.com/jiyoung79/StudyFiles/assets/155033243/4469e2be-2749-4d88-bd73-f9bb0cafdce1)

<hr>

