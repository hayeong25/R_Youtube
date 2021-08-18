# 현재 설정된 작업 디렉토리 확인 getwd()함수
getwd()
# R에서는 역슬래시(\) 인식 못 함

# 현재 작업 디렉토리 변경 setwd()함수
setwd("C:/Program Files/R/R-4.1.0/workspace")
getwd()

# 현재 작업 디렉토리의 상위 디렉토리 확인 setwd("..")
setwd("..")
getwd()

# 하위 디렉토리로 변경 setwd("디렉토리명")
setwd("workspace")
getwd()

a <- getwd()
a

# 현재 작업 종료 q() 함수
q()

# 현재 작업공간에 저장된 함수와 변수 리스트 조회 ls()함수
ls()

# c() : 벡터 형식의 데이터를 생성해주는 함수
x <- 100
y <- c(2, 3, 5, 7)
f <- function(y) (y - 32)/1.8
hero <- c("Superman", "Batman", "Spiderman")
z <- 3.14
ls()

# 조금 더 구체적으로 확인하고 싶으면 ls.str()
ls.str()

# 변수 등을 삭제하고 싶은 경우 rm()함수 (여러 개 삭제 가능)
rm(z)
z
rm(x, y)
ls()

# 작업 공간의 변수를 모두 삭제하고 싶은 경우
rm(list = ls())
ls()

# 특정 변수만 저장하고 싶은 경우 save(변수명, file="변수명.rda")
save(hero, file="hero.rda")

# 불러오기 load("파일명")
load('hero.rda')