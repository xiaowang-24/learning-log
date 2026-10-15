#!/bin/bash
# weekly_report.sh —— W3 收尾：把这周手敲的命令存成文件
# 用法：./weekly_report.sh

cd ~/linux-drill || exit 1        # 进练习场；进不去就直接退出

echo "=== 练习数据报告 ==="
echo "时间：$(date)"
echo
echo "-- 文件清单 --"
ls -lh
echo
echo "-- 数据统计 --"
echo "nums.txt 总行数: $(wc -l < nums.txt)"
echo "含数字 4 的行数: $(grep -c 4 nums.txt)"
echo "a.txt 里 ok 的行数(不分大小写): $(grep -ic ok a.txt)"
echo
echo "报告完毕"

