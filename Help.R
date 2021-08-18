# 도움말
help.start()

# 특정 함수에 대한 도움말
help(median)
?(median)

# 인수와 관련된 설명만 보고 싶을 때
args(median)

# 해당 함수에 대한 예시
example(median)

# 함수 일부의 이름만 알고 있을 경우
help.search("xyplot")
??xyplot

# 변수명 일부만 알고 있을 경우 apropos("변수명")
apropos("vector")

# 정규표현식에 대한 설명
?regex

# q로 끝나는 변수명 찾기
apropos("q$")

# 7부터 9까지의 숫자가 들어간 변수명 찾기
apropos("[7-9]")

# xy가 포함된 변수명 찾기
apropos("xy+")