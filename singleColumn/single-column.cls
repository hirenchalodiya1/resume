% Identification
\ProvidesClass{single-column}[18/08/2020 Single Column Latex Class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% % Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{111111} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/calibri/]{Calibri-Light}

% Name command
\newcommand{\namesection}[3]{
  \centering{
    \fontsize{28pt}{30pt}
    \fontspec[Path = fonts/calibri/]{Calibri-Light}\selectfont #1 
    \fontspec[Path = fonts/calibri/]{Calibri-Light}\selectfont #2
  } \\ [5pt]
  
  \centering{
    \color{headings}
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \fontsize{11pt}{14pt}\selectfont #3
  }
  
  \noindent
  \makebox[\linewidth]{
    \color{headings}
    \rule{\paperwidth}{0.4pt}
  }
  \vspace{-15pt}
}

% Descriptors command
\newcommand{\descript}[1]{
  \color{subheadings}
  \raggedright
  \scshape
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{11pt}{14pt}
  \selectfont {#1 \\} 
  \normalfont
}

\newcommand{\contact}[1]{
  \color{subheadings}
  \raggedright
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{11pt}{14pt}
  \selectfont {#1 \\} 
  \normalfont
}

\newcommand{\email}[1]{
  \href{mailto:#1}{#1}
}

\newcommand{\phone}[1]{
  (+91) #1
}

\newcommand{\links}[1]{
  \color{subheadings}
  \raggedright
  \fontspec[Path = fonts/lato/]{Lato-Reg}
  \fontsize{11pt}{14pt}
  \selectfont {#1 \\} 
  \normalfont
}

\newcommand{\link}[3]{
  #1:// \href{#3}{\underline{#2}}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}

% Headings command
\titleformat{\section}{
  \color{headings}
  \raggedright
  \scshape
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{16pt}{24pt}
  \selectfont
}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{11pt}{12pt}
  \selectfont
  \bfseries
  \uppercase
}{}{0em}{}

\newcommand{\subtitle}[1]{
  \vspace{1pt}
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{11pt}{12pt}
  \selectfont{#1}
  \bfseries
  \raggedright
  \vspace{1pt}
  \normalfont
}

% project
\newcommand{\projectName}[1]{
\vspace{1pt}
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{12pt}{12pt}
  \selectfont
  \bfseries
  \uppercase {#1}
}
\newcommand{\projectDes}[1]{
  \color{subheadings}
  \raggedright
  \scshape
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{11pt}{14pt}
  \selectfont {#1} 
  \normalfont
}
\newcommand{\project}[3]{
  \projectName{#1}
  \projectDes{#2}
  \hfill #3 \\
}

% Bullet Lists with fewer gaps command
\newenvironment{infos}{
  \vspace{-3mm}
  % \begin{itemize}
  \itemsep0.5pt 
  \parskip0pt 
  \parsep0pt
  \leftmargin0pt
  \labelwidth0pt
}{
  % \end{itemize}
  \vspace{\topsep}
}

% item command
\newcommand{\info}[1]{
  \vspace{1pt}
  #1 \\
  \vspace{1pt}
}
