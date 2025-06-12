import os

def add_copyright_to_py_files(directory):
    copyright_line = "# Copyright (c) 2019 Sebastián Ramírez\n# SPDX-License-Identifier: MIT\n"

    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".py"):
                file_path = os.path.join(root, file)

                # 读取文件内容
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()

                # 如果文件为空，则跳过
                if not content.strip():
                    continue

                # 如果文件已经包含该注释，则跳过
                if content.startswith(copyright_line):
                    continue

                # 在文件开头添加注释
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(copyright_line + content)

# 调用函数，传入需要处理的目录路径
add_copyright_to_py_files('./app')
