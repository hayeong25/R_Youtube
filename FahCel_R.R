# ȭ���� �����µ��� �ٲٴ� ��
# �ܼ�â���� ȭ���µ� �Է¹޾�(readline) fah ������ ����
# �ܼ�â���� ���������� �Է¹ޱ� ������ ���ڷ� �ٲ�(as.numeric()�Լ� ���)
# ȭ������ 32 �� ���� 1.8�� ������ �����µ��� �ȴ�
# �� â�� ��� print(paste())
# ��ũ��Ʈ�� ���α׷��� �� ���� �����ϱ� source("���ϸ�")
fah <- readline("Fahrenheit? ")
fah <- as.numeric(fah)
cel <- (fah - 32) / 1.8
print(paste("Celsius =", cel))