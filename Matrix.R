# 행렬(Matrix) : 2차원의 벡터
v <- 1:12
dim(v) <- c(3, 4) # 3행 4열의 벡터(행렬) 생성 함수 dim()

v <- 1:12
matrix(data=v, nrow=3, ncol=4) # matrix()
matrix(data=v, nrow=3, ncol=4, byrow=TRUE) # 레코드값이 세로가 아닌 가로 순서로 채워진다

# 행렬에 이름 설정
rnames <- c("R1", "R2", "R3")
cnames <- c("C1", "C2", "C3", "C4")
matrix(data=v, nrow=3, ncol=4, dimnames=list(rnames, cnames))

# 행렬에 같은 값을 저장하고 싶을 때
matrix(0, 3, 4)

mat <- matrix(v, ncol=4)
str(mat)

# 행, 열 개수 dim(), length(mat)
dim(mat)
dim(mat)[1] # 행의 개수 = nrow(mat)
dim(mat)[2] # 열의 개수 = ncol(mat)
length(mat)

# rbind() : 행 방향으로 벡터 결합
# cbind() : 열 방향으로 벡터 결합
#여기서 행/열 이름은 벡터 변수 이름
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(6, 7, 8, 9, 10)
rbind(v1, v2)
cbind(v1, v2)

# 벡터와 행렬을 결합할 수도 있다
cbind(1:3, 4:6, matrix(7:12, 3, 2))
rbind(matrix(1:10, 2, 5), matrix(7:16, 2, 5))
rbind(matrix(1:10, 2, 5, byrow=TRUE), 1:5)


# 행렬 연산
mtx <- matrix(1:6, 2, 3)
mtx + 1 # 행렬의 각 원소에 1씩 더해진다

# 행렬과 행렬 사칙연산 (두 행렬의 크기가 같아야 가능)
a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 2, 3)
a + b # 대응되는 셀 값끼리 연산

# 행렬곱 (첫 번째 행렬의 행의 개수 = 두 번째 행렬의 열의 개수) %*%
a <- matrix(1:6, 2, 3)
b <- matrix(1:6, 3, 2) 
a %*% b

# 벡터와 행렬 곱셈 (벡터가 연산 가능한 행렬로 자동 변환되어 사칙연산을 수행한다)
mtx <- matrix(1:6, 2, 3)
mtx %*% 1:3
1:2 %*% mtx

mtx + 1:3 # 행 방향으로 셀 값끼리 연산. 재사용원칙에 따라 2번째 행도 순서대로 연산

# rowSums() : 행들의 합
# colSums() : 열들의 합
# rowMeans() : 행들의 평균
# colMeans() : 열들의 평균
rowSums(mtx)
colSums(mtx)
rowMeans(mtx)
colMeans(mtx)

# 전치행렬 만들기 t() 행렬 바꾸기
t(mtx)
t(1:5) # R에서의 디폴드값은 '열' 방향이므로,
       # 1:5는 하나의 열을 가진 행렬로 인식해
       # t(1:5) 는 하나의 행을 가진 행렬로 변환된다


# 행렬 인덱싱
v <- 1:12
mat <- matrix(v, 3, 4)
str(mat)
mat[1,] # 행렬의 행이나 열만 추출할 경우, 결과값은 벡터
mat[,3] # R은 최대한 차원을 줄여서 나타내려고 한다
mat[1, , drop=FALSE] # 행렬의 차원 줄이지 않음으로 설정 = 결과값이 벡터가 아닌 행렬로
mat[, 3, drop=FALSE]

mat[2:3,] # 2~3번째 행만 추출
mat[, 3:4] # 3~4번째 열만 추출
mat[1:2, 2:3]
mat[c(1, 3), c(2, 4)]
mat[, -c(2, 3)] # 2~3번째 열을 제외한 나머지 추출
mat[1, 3] <- 77
mat[2,] <- c(22, 55)
mat[2:3, 3:4] <- c(1, 2, 3, 4)

# 5개 도시간의 거리 행렬
city.distance <- c(0, 331, 238, 269, 195, 331, 0, 95, 194, 189, 238, 95, 0,
                   171, 130, 269, 194, 171, 0, 77, 195, 189, 130, 77, 0)
city.distance.mat <- matrix(city.distance, 5, 5, byrow=TRUE)
colnames(city.distance.mat) <- c("Seoul", "Busan", "Daegu", "Gwangju", "Jeonju")
rownames(city.distance.mat) <- c("Seoul", "Busan", "Daegu", "Gwangju", "Jeonju")
city.distance.mat["Seoul", "Busan"]
city.distance.mat["Seoul",]