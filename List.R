# 리스트 데이터구조
list(0.6826, 0.9544, 0.9974)

# 리스트는 서로 다른 객체를 표현하고자 할 때 유용하다
list(1.23, "Apple", c(2, 3, 5, 7), matrix(1:6, ncol=3), mean) # mean : 함수 정의식

lst <- list()
lst[[1]] <- 1.23
lst[[2]] <- "Apple"
lst[[3]] <- c(2, 3, 5, 7)
lst[[4]] <- matrix(1:6, 2, 3)
lst[[5]] <- mean
lst

# 리스트 원소 이름 변경
names(lst) <- c("sigma1", "sigma2", "sigma3", "sigma4", "sigma5")
lst

# 리스트 원소 개수
length(lst)

worldcup1 <- list("Brazil", "South Africa", "Germany")
worldcup2 <- list("Korea-Japan", "France", "USA")
c(worldcup1, worldcup2)

a <- list(1, 2, 3, 4, 5, 6, 7)
mean(a) # mean()에는 벡터를 넣어야 하기 때문에 Error
# list를 벡터로 분해해야 한다 >> unlist()
mean(unlist(a))


# 리스트 인덱싱
product <- list("A001", "Mouse", 30000)
product[[3]] # 3번째 자료 내부에 있는 원소 값을 불러옴
product[3] # 3번째 자료 통째로 불러옴

# product[[c(1, 3)]] : product[[1]]의 3번째 값을 가져옴
# product[c(1, 3)] : product[[1]]과 product[[3]]의 이름과 값을 가져옴

class(product[[3]]) # numeric
class(product[3]) # list

product[3] * 0.9 # Error
product[[3]]  0.9

product[c(1, 2)]
product[c(FALSE, TRUE, TRUE)]
product[-1]

product <- list(id="A001", name="Mouse", price=30000)
product[["name"]]
product$name
product[c("name", "price")]

product[c(4, 2, 5)] # 존재하지 않는 경우, 이름은 NA, 내용은 NULL

product[[3]] <- c(30000, 40000)
product[3] <- list(c(30000, 40000))

product[1:3] <- list("A002", "KeyBoard", 90000)

product[[4]] <- c("Domestic", "Export")

product$madein <- c("Korea", "China")
product["madein"] <- list(c("Korea", "China"))

product[6:9] <- list(0.12, 0.15, 0.22, 0.27)

names <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
values <- c(842, 729, 786, 751, 844, 851, 702)
traffic.death <- list()
traffic.death[names] <- values
traffic.death[c("Sat", "Sun")] <- NULL

traffic.death[traffic.death < 750] <- NULL

lst <- list(one=1, two=2, three=list(alpha=3.1, beta=3.3))
lst[["three"]]
lst[["three"]][["beta"]]