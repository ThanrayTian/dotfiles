#参数说明：

    -std=c++11: 使用 C++11 新特性;
    -stdlib=libc++: 指定使用 clang 的标准库头文件 /usr/include/c++/v1/;
    -Werror: 将所有编译警告视为编译错误;
    -Weverything: 打开所有编译警告选项。在 GCC 中,无法通过单个选项打开所有 编译警告,必须繁琐的同时指定 -Wall、-Wextra、以及大量分散的其他选项,为此clang 新增了 -Weverything。当然,有些警告意义不大,完全可忽略;
    -Wno-disabled-macro-expansion: 禁止使用宏表达式,忽略此警告;
    -Wno-float-equal: 浮点类型不应使用 != 和 == 运算符,忽略此警告;
    -Wno-c++98-compat , -Wno-c++98-compat-pedantic: 采用 C++11 新特性的代 码无法兼容 C++98,忽略此警告;
    -Wno-global-constructors: 在 main() 之前存在执行的代码,忽略此警告;
    -Wno-exit-time-destructors: 在 main() 之后存在执行的代码,忽略此警告;
    -Wno-missing-prototypes: 虽有函数定义但缺失函数原型,忽略此警告;
    -Wno-padded: 结构体大小应为 4 字节整数倍,忽略此警告(编译器自动调整对齐 边界);
    -lc++: 指定链接 /usr/lib/libc++.so 标准库;
    -lc++abi: 指定链接 /usr/lib/libc++abi.so 标准库。注意:这两个选项非常重 要,缺失将导致链接失败!

#这些参数在YouCompleteMe的配置文件.ycm_extra_conf.py的flags中设置

