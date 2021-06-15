FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y python3-pip python-dev build-essential

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

# 플라스크는 FLASK_APP 환경 변수를 지정하지 않으면 \
# 자동으로 app.py를 기본 애플리케이션으로 인식한다.

# 아래의 경우 기본 애플리케이션을 pybo로 설정해줬다.
ENV FLASK_APP=pybo

# 플라스크는 서버를 실행할 때 아무런 설정을 하지 않으면 \
# 기본 운영 환경(production)으로 실행한다.
# 개발 환경 = 디버그 모드
# 디버그 모드는 오류가 발생하면 디버깅 결과 메시지를 웹 브라우저에 출력한다.
# 서버를 실행할 때 프로그램을 변경하면 서버가 자동으로 변경된 내용 적용한다.

# 아래의 경우 개발 환경(development)으로 실행한다.
ENV FLASK_ENV=development


ENTRYPOINT ["python3"]

CMD ["pybo.py"]