使用了vim-plug插件管理工具

所有的需要的插件都写在了.vimrc里面了 Plug xxxxxx/xxxxxx

初始化只要在vim下 :PlugInstall即可, 其他命令：

:PlugStatus 检查插件状态
:PlugUpdate 升级插件
:PlugUpgrade 升级vim-plug本身


删除插件步骤：
1、在.vimrc文件中删掉插件
2、vim中运行:PlugClean
