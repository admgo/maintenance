#! /bin/bash

# 使用环境变量默认值
TITLE_VALUE="${TITLE}"
HEADLINE_VALUE="${HEADLINE}"
MAINTENANCETIME_VALUE="${MAINTENANCETIME}"
MAIL_VALUE="${MAIL}"

# 解析命令行参数
while [[ $# -gt 0 ]]; do
  case "$1" in
    -title)
      TITLE_VALUE="$2"
      shift 2
      ;;
    -headline)
      HEADLINE_VALUE="$2"
      shift 2
      ;;
    -maintenancetime)
      MAINTENANCETIME_VALUE="$2"
      shift 2
      ;;
    -mail)
      MAIL_VALUE="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

# 替换占位符
sed -i "s/{{TITLE}}/${TITLE_VALUE}/g" /var/www/html/index.html
sed -i "s/{{HEADLINE}}/${HEADLINE_VALUE}/g" /var/www/html/index.html
sed -i "s/{{MAINTENANCETIME}}/${MAINTENANCETIME_VALUE}/g" /var/www/html/index.html
sed -i "s/{{MAIL}}/${MAIL_VALUE}/g" /var/www/html/index.html

nginx -g "daemon off;"