\LoadClass[10pt,letterpaper]{article}
\ProvidesClass{discussion}

%%%% PACKAGES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Layout & Formatting
\usepackage{lmodern}
\usepackage[utf8]{inputenc}
\usepackage[margin=1.0in]{geometry}		% For Margins
\usepackage{fullpage}
\usepackage{framed,xcolor} 				% Framed Paragraph Boxes
\usepackage{enumerate}					% Customizable Lists
\usepackage{parskip}

% Fonts
\usepackage{mathrsfs}                   % Ralph Smith's Formal Script Symbol Fonts 
\usepackage{marvosym}
\usepackage{amsfonts}                   % AMS Fonts
\usepackage{bm}

% Figures / Pictures
\usepackage{graphicx,subcaption}		% Image Embedding
\usepackage{float}						% Floats
\usepackage{subcaption}					% Subfigures
\usepackage[margin=1cm]{caption}		% Caption Formatting
\usepackage{array}                      % Arrays
\usepackage{multirow}                   % Merge Table Rows
\usepackage{booktabs}                   % Pretty Tables
\usepackage{listings}                   % Verbatim Listings
\usepackage[ruled]{algorithm2e}         % Pseudocode
\usepackage{verbatim}

% Math / Theorems
\usepackage{amsmath,amsthm,amssymb}		% AMS Math
\usepackage{thmtools}					% Theorem Tools
\usepackage{mathtools}					% Theorem Tools
\usepackage{esint}						% Alternate Integral Symbols

% Misc
\usepackage{url}						% URL Formatting
\usepackage{soul}                       % Sane Unnderlines
\usepackage{color}                      % Colors
\usepackage[colorlinks = true,
            linkcolor = blue,
            urlcolor  = blue,
            citecolor = blue,
            anchorcolor = blue]{hyperref}
%%%% CUSTOM COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Math Notation
\renewcommand{\vec}[1]{\mathbf{#1}}
\newcommand{\dom}{\mathrm{dom}}
\newcommand{\sign}{\mathrm{sign}}
\newcommand{\x}{\mathbf{x}}
\newcommand{\y}{\mathbf{y}}
\newcommand{\expect}{\mathbb{E}}

% Sets
\newcommand{\set}[1]{\{#1\}}

% Blackboard Bold
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\E}{\mathbb{E}}
% Calligraphic
\newcommand{\A}{\mathcal{A}}
\newcommand{\B}{\mathcal{B}}
\newcommand{\D}{\mathcal{D}}
\newcommand{\F}{\mathcal{F}}
\renewcommand{\L}{\mathcal{L}}
\newcommand{\M}{\mathcal{M}}
\renewcommand{\P}{\mathcal{P}}
\newcommand{\X}{\mathcal{X}}
\newcommand{\Y}{\mathcal{Y}}

% Symbols
\newcommand{\eps}{\varepsilon}
\newcommand{\abs}[1]{|#1|}
\newcommand{\suchthat}{\text{ s.t. }}
\renewcommand{\vec}[1]{\boldsymbol{#1}}

% Calculus
\newcommand{\diff}[1]{\,\text{d}#1}
\newcommand{\pdiff}[2]{\frac{\partial#1}{\partial#2}}

% Linear Algebra
\DeclareMathOperator{\im}{Im}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\adj}{adj}
\DeclareMathOperator{\trace}{tr}
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\dist}{dist}
\DeclareMathOperator{\Var}{Var}
\DeclareMathOperator{\Cov}{Cov}
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}
\DeclarePairedDelimiter{\inner}{\langle}{\rangle}

% Distributions
\newcommand{\Ber}{\text{Ber}}
\newcommand{\Bin}{\text{Bin}}
\newcommand{\Geom}{\text{Geom}}
\newcommand{\Dir}{\text{Dir}}
\newcommand{\Beta}{\text{Beta}}
\newcommand{\iid}{\stackrel{\text{iid}}{\sim}}

%%%% PREAMBLE (No need to edit!) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lengths
\setlength{\topmargin}{-0.6 in}
\setlength{\textheight}{8.5 in}
\setlength{\headsep}{0.75 in}

% Document Structure
\newcounter{lecnum}
\renewcommand{\thepage}{\thelecnum-\arabic{page}}
\renewcommand{\thesection}{\thelecnum.\arabic{section}}
\renewcommand{\theequation}{\thelecnum.\arabic{equation}}
\renewcommand{\thefigure}{\thelecnum.\arabic{figure}}
\renewcommand{\thetable}{\thelecnum.\arabic{table}}
\newcommand{\lecture}[4]{
   \pagestyle{myheadings}
   \thispagestyle{plain}
   \newpage
   \setcounter{lecnum}{#1}
   \setcounter{page}{1}
   \noindent
   \begin{center}
   \framebox{
      \vbox{\vspace{2mm}
    \hbox to 6.28in { {\bf EECS 445: Machine Learning
		\hfill Fall 2016} }
       \vspace{4mm}
       \hbox to 6.28in { {\Large \hfill Discussion #1: #2  \hfill} }
       \vspace{2mm}
       \hbox to 6.28in { {\it Written by: #3 \hfill} }
      \vspace{2mm}}
   }
   \end{center}
   \markboth{Discussion #1: #2}{Discussion #1: #2}
   \vspace*{4mm}
}
\renewcommand{\cite}[1]{[#1]}
\def\beginrefs{\begin{list}
        {[\arabic{equation}]}{\usecounter{equation}
         \setlength{\leftmargin}{2.0truecm}\setlength{\labelsep}{0.4truecm}%
         \setlength{\labelwidth}{1.6truecm}}}
\def\endrefs{\end{list}}
\def\bibentry#1{\item[\hbox{[#1]}]}

\newcommand{\challenge}[2]{\noindent \textbf{(Challenge Problem)} \emph{#1}: #2 }

% \newcommand{\exercise}[1]{\noindent \textbf{(Exercise)} #1 }

\newcommand{\fig}[3]{
			\vspace{#2}
			\begin{center}
			Figure \thelecnum.#1:~#3
			\end{center}
	}

%%%% THEOREM ENVIRONMENTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Theorem Environments
\theoremstyle{definition}
\newtheorem{exercise}{Excercise}[lecnum]
\newtheorem{example}{Example}[lecnum]
\newtheorem{theorem}{Theorem}[lecnum]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{fact}[theorem]{Fact}

% QED
\renewcommand\qedsymbol{$\blacksquare$}

% Proof
\makeatletter
\renewenvironment{proof}[1][\proofname]{%
  \par\pushQED{\qed}\normalfont%
  \topsep6\p@\@plus6\p@\relax
  \trivlist\item[\hskip\labelsep\bfseries#1\@addpunct{:}]%
  \ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\makeatother

% Problem
\newenvironment{problem}[2][Problem]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}

% Answer
\newenvironment{answer}
	{\begin{trivlist}\item}
	{\end{trivlist}}