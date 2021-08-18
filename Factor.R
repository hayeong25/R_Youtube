# 팩터 factor()

review <- c("Good", "Good", "Indifferent", "Bad", "Good", "Bad")
review.factor <- factor(review)
str(review.factor)
as.numeric(review.factor) # 알파벳 순서로 저장됨 Bad가 1, Good이 2, Indifferent가 3

eventday <- c("Mon", "Mon", "Tue", "Wed", "Mon", "Wed", "Thu", "Fri", "Tue")
eventday.factor <- factor(eventday)
# 범주 레벨 지정 levels : factor 내에 없는 원소도 범주 안에 포함할 수 있다
eventday.factor <- factor(eventday, levels=c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))

levels(review.factor)
levels(review.factor) <- c("B", "G", "I")

# 팩터 레벨 개수 확인 nlevels()
nlevels(review.factor)
length(levels(review.factor))

# 순서가 있는 팩터 ordered()
eval <- c("Medium", "Low", "High", "Medium", "High")
eval.factor <- factor(eval)
eval.ordered <- factor(eval, levels=c("Low", "Medium", "High"), ordered=TRUE)

# table() : 빈도수
table(eval.factor)
table(eval.ordered)

# 숫자로 표현된 팩터 원소에 별명 붙이기 labels()
sex <- c(2, 1, 2, 2, 1, 0) # 1: 남, 2:여
sex.factor <- factor(sex, levels=c(1, 2), labels=c("male", "female"))
table(sex.factor)

# Factor Data Set
c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits", "Vegetables", "Dairy", "Fruits", "Proteins", "Fruits")
food <- factor(c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits", "Vegetables", "Dairy", "Fruits", "Proteins", "Fruits"))

library(forcats)
fct_inorder(food) # 순서대로 레벨 순서
fct_infreq(food) # 빈도수에 따라 레벨 순서 지정
fct_relevel(food, "Fruits", "Vegetables", "Grains", "Proteins", "Dairy") # 레벨 순서 사용자 맘대로 지정
fct_relevel(food, "Proteins") # 범주 하나만 relevel 하면 나머지는 알파벳 순으로 레벨 순서 정해짐
fct_relevel(food, "Proteins", after=2) # 2번째 범주의 뒤로 위치시키는 것도 가능
fct_relevel(food, "Proteins", after=Inf) # 맨 뒤로 이동

value <- c(1000, 1500, 1200, 700, 2000, 2000, 1350, 2500, 15000, 3000)
fct_reorder(food, .x=value) # 음식 단가 순으로 재정렬. 값이 여러 개일 경우 중위값으로 설정
fct_reorder(food, .x=value, .fun=mean) # 중위값이 아닌 평균값으로 재정렬
fct_reorder(food, .x=value, .desc=TRUE) # 단가 내림차순 정렬
fct_recode(food, Fats="Proteins", Fats="Dairy") # 기존 레벨명 변경