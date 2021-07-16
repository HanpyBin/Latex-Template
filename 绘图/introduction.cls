\LoadClass{article}

\ProvidesClass{introduction}

% 基本设置
\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.5}

\RequirePackage{ctex}

% 设置标题格式
\RequirePackage{titlesec}
\titleformat{\section}
	% format: 标题的格式，包括标签和主题部分
	{\Large\bf\raggedright}
	% label: 标题的标签
	{}
	% sep: 标题和主体部分之间的空白
	{0em}
	% before: 在标题之间的代码
	{}
	% after: 在标题之后的代码
	[\titlerule]
	
\RequirePackage[
	a4paper,
	left=0.8in,
	right=0.8in,
	top=0.70in,
	bottom=0.55in,
	nohead
]{geometry}

% 新命令

%% 插入图片
\RequirePackage{graphicx}

% description: 插入单张居中图片
% param #1: 图片的序号
% param #2: 图片的大小比例
\newcommand{\singleplot}[2]{
	\begin{figure}[ht]
		\centering
		\includegraphics[scale=#2]{pic/#1.png}
	\end{figure}
}

% description: 插入两张居中图片（两个图片同一水平线）
% param #1: 左边图片的序号
% param #2: 左边图片的大小比例
% param #3: 右边图片的序号
% param #4: 右边图片的比例
% param #5: 插入间隔如\quad，\qquad
\newcommand{\doubleplot}[5]{
	\begin{figure}[ht]
		\centering
		\includegraphics[scale=#2]{pic/#1.png}
		#5
		\includegraphics[scale=#4]{pic/#3.png}
	\end{figure}
}

%% 辅助功能
% description: 插入2个空行
\newcommand{\parainterval}{
	\newline\newline
}