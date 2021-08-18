c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
c("we", "love", "data", "analytics")
c(TRUE, FALSE, TRUE, FALSE)

odd <- c(1, 3, 5)
even <- c(2, 4, 6)
c(odd, even) # (1, 3, 5) (2, 4, 6)을 더한다고 (1, 2, 3, 4, 5, 6)이 되지는 않는다

# 수열
3:9
9:3
5:-3

# 시퀀스
seq(from=3, to=9)
seq(from=3, to=9, by=2) # 3으로 시작해서 9로 끝나는 2씩 증가하는 수열
seq(from=3.5, to=1.5, by=-0.5)
seq(from=0, to=100, length.out=5) # 0부터 100까지 숫자 중 5개만 출력
seq(from=-1, to=1, length.out=5)

# 주어진 값을 반복해서 벡터 생성
rep(1, times=3) # 1을 3번 반복
rep(c(1, 2, 3), times=3) # 벡터 3번 반복
rep(c(1, 2, 3), each=3) # 벡터 안의 값을 each만큼 반복
rep(c(1, 2, 3), times=c(1, 2, 3)) # times에 지정된 원소 개수만큼 반복
rep(c(1, 2, 3), length.out=8) # 원소의 개수가 8개가 될 때까지만 반복

# 숫자와 문자가 합해질 경우, 숫자가 문자화 된다
num <- c(1, 2, 3)
char <- c("X", "Y", "Z")
c(num, char)

# 벡터 속성
str(num)
str(char)

# 벡터 길이 length()
length(num)

# 내장된 상수 벡터
LETTERS # 대문자 나열
letters # 소문자 나열
month.name # 월 이름 나열
month.abb # 월 이름 약자로 나열

month <- c(12, 9, 3, 5, 1)
month.name[month]

# 벡터 연산
1 + 2
"+"(1, 2)
c(1, 2, 3) + c(4, 5, 6)
c(1, 2, 3) * c(4, 5, 6)
c(10, 20, 30) %% c(3, 5, 7) # %% : 나머지
c(10, 20, 30) %/% c(3, 5, 7) # %/% : 몫

# 길이가 같지 않은 벡터 연산의 경우, 길이가 짧은 벡터의 원소를 재사용해서 연산한다
c(1, 2, 3) + c(4, 5, 6, 7, 8, 9)
c(1, 3, 5) + 10

# 논리연산
v <- pi
w <- 10/3
v == w
v != w
v > w
v < w
!(v > w)
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v==w)

y <- c(0, 25, 50, 75, 100)
z <- c(50, 50, 50, 50, 50)
y == z
y == 50
y != z

# TRUE는 1, FALSE는 0
as.numeric(TRUE)
sum(y > 50) # TRUE가 2개이므로 결과값은 2

any(-3:3 > 0) # -3부터 3까지 하나라도 0 이상이면 TRUE 반환
all(-3:3 > 0) # -3부터 3까지 모두 0 이상이어야 TRUE 반환

sqrt(2)^2 == 2 # sqrt()는 제곱근 함수
identical(sqrt(2)^2, 2) # R에서는 4의 제곱근과 2가 같은 수라고 보지 않는다
all.equal(sqrt(2)^2, 2) # all.equal()함수는 아주 작은 오차는 무시하고 결과 출력
isTRUE(all.equal(sqrt(2)^2, 3))

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("pie", "juice", "cake")
paste(fruit, food) # paste() 붙이기
paste(fruit, "juice")

abs(-3:3) # 절댓값 함수 abs()
log(1:5, base=exp(1))
log2(1:5)
log10(1:5)

exp(1:5)
y <- exp(1:5)
log(y)

factorial(1:5)
choose(5, 2) # 경우의 수 choose() 함수
sqrt(1:5)
options("digits") # options() : 유효자릿수 확인
signif(456.789, digits=2) # 유효자릿수 설정 signif()
signif(456.789, digits=3)
signif(456.789, digits=4)

# R은 가장 가까운 짝수로 반올림한다
round(456.789, digits=2) # 소수점 둘째자리까지만
round(sqrt(1:5), digits=2)
round(456.789, digits=-2) # 100단위로 반올림
round(456.789, digits=-1) # 10단위로 반올림
round(11.5)
round(12.5) # 13이 아닌 12가 출력된다
round(-3.5)
round(-4.5)

floor() # 내림
ceiling() # 올림
trunc() # 소수점 버림

# 양의 무한대수 Inf
# 음의 무한대수 -Inf
3 / 0
Inf * Inf
Inf * (-Inf)

# is.infinite() : 해당 수가 무한대인지 확인
is.infinite(10^(305:310))

Inf / Inf # NaN (Not a Number)
is.nan(NaN + 3) # is.nan() : 해당 수가 NaN값인지 확인

# NA (Not Available)
k <- NA
k == NA # TRUE가 아닌 NA
is.na(k) # TRUE

sum()
prod() # 원소 모두 곱셈
max()
min()
mean() # 평균
median() # 중위값
range() # 범위 내 최솟값과 최댓값 출력
var() # 평균
sd()

w <- c(1, 2, 3, 4, 5, NA)
sum(w)
sum(w, na.rm=TRUE) # NA값은 빼고 sum()하라는 의미
sum(na.omit(w))

v <- c(NA, NA, NA, NA, NA)
sum(v, na.rm=TRUE)
prod(v, na.rm=TRUE) # 0이 아닌 1이 나온다. 잘못된 값 출력
max(v, na.rm=TRUE) # -Inf 출력
min(v, na.rm=TRUE) # Inf 출력

# 누적 연산
cumsum() # 누적합
cumprod() # 누적곱
cummax()
cummin()

cumsum(c(3, 5, 1, NA, 2)) # cum()함수에는 na값 무시하는 기능이 없다

diff() # 다음 원소값 - 현재 원소값
# diff() 함수를 사용하면 원래 원소개수보다 한 개 적게 출력된다
diff(1:5, lag=2) # 2칸씩 떨어진 원소들간의 뺄셈

union() # 합집합
intersect() # 교집합
setdiff() # 차집합
setequal() # 두 집합이 동일한지
is.element() # 첫 번째 인수가 두 번째 인수의 원소가 맞는지

# 벡터 인덱싱
prime <- c(2, 3, 5, 7, 11, 13, 17, 19)
prime[1]
prime[c(1, 1, 5, 5)]
indices <- c(1, 3, 5, 7)
prime[indices]
prime[-1] # 첫 번째 원소를 제외한 나머지 원소 출력
length(prime) # 벡터 길이 = 마지막 원소의 인덱스

prime <- c(2, 4, 5, 7, 11, 14, 17, 18)
prime[2] <- 3 # 두 번째 원소가 4에서 3으로 변경
prime[c(6, 8)] <- c(13, 19)
prime[9] <- 23 # 벡터 길이보다 길어지면 자동으로 길이 늘려준다
prime[c(10, 11)] <- c(29, 31)
prime[15] <- 47 # 벡터 길이는 11인데 15칸에 값을 넣는다고 하면 나머지 칸에는 NA로 채워넣는다
prime[prime %% 2 == 0]

seq_along() # 벡터 길이만큼 1부터 정수 반환
seq_along(prime) %% 2 == 0
prime[seq_along(prime) %% 2 == 0] # 2의 배수인 인덱스값 반환
prime[c(FALSE, TRUE)]


which() # 논리값을 인수로 받아 TRUE에 해당되는 위치의 값 반환
which.max()
which.min()

rainfall <- c(21.6, 23.6, 45.8, 77.0, 102.2, 133.3,
              327.9, 348.0, 137.6, 49.3, 53.0, 24.9)
rainfall > 100
which(rainfall > 100)
month.name[which(rainfall > 100)]
mont.abb[which(rainfall > 100)]
which.max(rainfall)
month.name[which.max(rainfall)]
which.min(rainfall)
month.name[which.min(rainfall)]
rainfall[which.min(rainfall)]
rainfall[which.max(rainfall)]

traffic.death <- c(842, 729, 786, 751, 844, 851, 702)
names(traffic.death) <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
traffic.death["Sat"]
traffic.death[c("Tue", "Thu", "Sun")]
weekend <- c("Fri", "Sat", "Sun")
traffic.death[weekend]