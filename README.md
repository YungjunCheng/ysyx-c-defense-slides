# 一生一芯 C 阶段结业答辩 Beamer 模板

基于 LaTeX Beamer + TikZ 重写的结业答辩 PPT 模板，16:9 宽屏，xelatex 编译。

## 编译

### 依赖

- **LaTeX**: TeX Live（含 `xelatex`, `beamer`, `tikz`, `ctex`, `fontspec`）
- **中文字体**: Noto Sans CJK SC, Source Han Serif CN
- **构建工具**: `latexmk`（推荐）

### 快速开始

```bash
make          # 编译 PDF → dist/
make watch    # 监听文件变化，自动重编译
make clean    # 清理临时文件
```

### 字体安装

**Arch Linux：**
```bash
sudo pacman -S noto-fonts-cjk adobe-source-han-serif-cn-fonts
```

**Ubuntu/Debian：**
```bash
sudo apt install fonts-noto-cjk
```

## 结构

```
.
├── Makefile
├── README.md
├── src/
│   ├── main.tex              # 文档入口
│   └── slides/
│       ├── 1_title.tex       # 封面
│       ├── 2_demo.tex        # 功能演示
│       ├── 3_exam.tex        # 考核题目讲解
│       ├── 4_detail.tex      # 细节讲解
│       └── 5_thanks.tex      # 致谢
├── assets/
│   ├── cover.png
│   └── logo.png
└── dist/                     # 编译输出（gitignore）
    └── main.pdf
```
