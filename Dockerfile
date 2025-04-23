FROM nginx

LABEL author="Kenley Wang"

COPY src/index.html /var/www/html/
COPY entrypoint.sh /
RUN chmod +x ./entrypoint.sh
COPY ./docker/conf.d/*.conf /etc/nginx/conf.d/

ENV HEADLINE="系统正在维护..."
ENV MAIL="example@examplecom"
ENV TITLE="喔！"
ENV MAINTENANCETIME="2024年1月1日 22:00 - 2024年1月2日 02:00"

WORKDIR /
EXPOSE 80

ENTRYPOINT [ "./entrypoint.sh" ]