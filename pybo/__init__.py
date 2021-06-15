from flask import Flask
# app = Flask(__name__)은 플라스크 애플리케이션을 생성하는 코드이다.
# __name__이라는 변수에는 모듈이 담긴다.
# pybo.py라는 모듈이 실행되면 __name__ 변수에 'pybo' 문자열이 담긴다.
app = Flask(__name__)


@app.route('/')
def hello_pybo():
    return 'Hello, Pybo!'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
