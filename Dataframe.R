# 데이터프레임 data.frame()
# 여러가지 데이터 타입이 있는 리스트의 성격을 갖는다

v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "KeyBoard", "USB")
v3 <- c(30000, 90000, 50000)
data.frame(v1, v2, v3)
data.frame(row.names=v1, v2, v3)
product <- data.frame(id=v1, name=v2, price=v3)
str(product)
product <- data.frame(id=v1, name=v2, price=v3, stringsAsFactors=TRUE)
# stringsasFactors=TRUE : 문자열을 Factor로 가져온다
# stringsasFactors=FALSE : 문자열을 Character로 가져온다

mat <- matrix(c(1, 3, 5, 7, 9,
                2, 4, 6, 8, 10,
                2, 3, 5, 7, 11), ncol=3)
number <- as.data.frame(mat)
colnames(number) <- c("odd", "even", "prime")

# List를 Dataframe으로 변환 : as.data.frame()
lst <- list(v1, v2, v3)
product <- as.data.frame(lst)
colnames(product) <- c("id", "name", "price")
nrow(product) # nrow() : 행 개수
ncol(product) # ncol() : 열 개수
length(product) # length() : 열 개수


# Dataframe 확장
# rbind() : 행 추가 (새로운 케이스 생성)
id <- c("A001", "A002", "A003")
name <- c("Mouse", "Keyboard", "USB")
price <- c(30000, 90000, 50000)
product <- data.frame(id, name, price, stringsAsFactors=FALSE)
product <- rbind(product, c("A004", "Monitor", 250000))

new.rows <- data.frame(id=c("A005", "A006"), name=c("Memory", "CPU"), price=c(35000, 320000))
product <- rbind(product, new.rows)

# cbind() : 열 추가 (새로운 변수 생성)
product <- cbind(product, madein=c("Korea", "China", "China", "Korea", "Korea", "USA"))
product$madein <- c("Korea", "China", "China", "Korea", "Korea", "USA")
new.cols <- data.frame(manufacturer=c("Logitech", "Logitec", "Samsung", "Samsung", "Samsung", "Intel"), quantity=c(20, 15, 50, 30, 40, 10))
product <- cbind(product, new.cols)

# cbind는 변수 이름이 동일한지 체크하지 않는다
cols1 <- data.frame(x=c("a", "b", "c"), y=c(1, 2, 3))
cols2 <- data.frame(x=c("alpha", "beta", "gamma"), y=c(100, 200, 300))
cbind(cols1, cols2) # 컬럼명이 x, y로 동일하지만 같은 열로 결합되지는 않는다

df1 <- data.frame(sex="female", months=1, weight=3.5)
df2 <- data.frame(sex="male", months=3, weight=4.8)
df3 <- data.frame(sex="male", months=4, weight=5.3)
df4 <- data.frame(sex="female", months=9, weight=9.4)
df5 <- data.frame(sex="female", months=7, weight=8.3)
lst <- list(df1, df2, df3, df4, df5)

do.call(rbind, lst) # 대량의 데이터프레임을 한 번에 정리

# rbind(), cbind()는 dataframe간의 결합이므로
# List간의 결합 시, as.data.frame()으로 변환 후 결합
lst1 <- list(sex="female", months=1, weight=3.5)
lst2 <- list(sex="male", months=3, weight=4.8)
lst3 <- list(sex="male", months=4, weight=5.3)
lst4 <- list(sex="female", months=9, weight=9.4)
lst5 <- list(sex="female", months=7, weight=8.3)

lapply(lst, as.data.frame) # 대량의 리스트를 한 번에 정리
do.call(rbind, lapply(lst, as.data.frame))


# Dataframe Indexing
us.state <- data.frame(state.abb, state.name, state.region, state.area, stringsAsFactors=FALSE)
us.state[[2]] # Vector 형태로 출력
us.state[2] # List 형태로 출력
us.state[c(2, 4)]
us.state[c("state.name", "state.area")] # List Indexing 방식
us.state[, c("state.name", "state.area")] # Matrix Indexing 방식