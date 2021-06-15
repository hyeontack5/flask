# flask

플라스크는 app 객체를 사용해 여러 가지 설정을 진행한다.
app 객체를 전역으로 사용하면 "순환 참조(circular import)"오류 발생한다.
app 객체를 전역으로 사용할 때 발생하는 문제를 예방하려면 "애플리케이션 팩토리(application fatory)"
