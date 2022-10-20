FROM openjdk:8-slim-buster
# 设置时区
WORKDIR /
#RUN ln -sf /usr/share/zoneinfo/Asia/ShangHai /etc/localtime
#RUN echo "Asia/Shanghai" > /etc/timezone
#重置系统软件包使时区生效
#RUN dpkg-reconfigure -f noninteractive tzdata
COPY ./target/k8s-0.0.1-SNAPSHOT.jar k8s-0.0.1-SNAPSHOT.jar
#修改端口
EXPOSE 8080
CMD java  ${JAVA_OPTS} -jar k8s-0.0.1-SNAPSHOT.jar
