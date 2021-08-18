# 화씨를 섭씨온도로 바꾸는 것
# 콘솔창에서 화씨온도 입력받아(readline) fah 변수에 저장
# 콘솔창에서 문자형으로 입력받기 때문에 숫자로 바꿈(as.numeric()함수 사용)
# 화씨에서 32 뺀 수를 1.8로 나누면 섭씨온도가 된다
# 새 창에 출력 print(paste())
# 스크립트로 프로그래밍 된 파일 실행하기 source("파일명")
fah <- readline("Fahrenheit? ")
fah <- as.numeric(fah)
cel <- (fah - 32) / 1.8
print(paste("Celsius =", cel))