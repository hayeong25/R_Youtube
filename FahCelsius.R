1 + 2
# Ctrl + Enter = 실행

plot(cars)
# 일반 텍스트는 콘솔창에, 그래프틑 Plots창에 결과값이 출력된다
# 오른쪽 상단 History에서는 지금까지의 결과값을 볼 수 있다

x <- 33 + 34
# 변수명 <- 저장할 값
x

fah <- readline("Fahrenheit? ")
fah <- as.numeric(fah)
cel <- (fah - 32)/1.8
print(paste("Celsius =", cel))