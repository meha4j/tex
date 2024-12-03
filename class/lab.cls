\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab}[Laboratory LaTeX class]

\LoadClass[12pt, a4paper]{report}

\RequirePackage[
  margin=1in
]{geometry}

\RequirePackage{graphicx}
\RequirePackage[T1, T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage{setspace}
\RequirePackage{multicol}

\graphicspath{ {./img/} }

\newcommand\no[1]{\renewcommand\@no{#1}}
\newcommand\@no{}

\newcommand\group[1]{\renewcommand\@group{#1}}
\newcommand\@group{}

\newcommand\tutor[1]{\renewcommand\@tutor{#1}}
\newcommand\@tutor{}

\renewcommand*{\maketitle}{%
\begin{titlepage}
  \begin{flushright}
    \includegraphics[scale=0.22]{logo.png}
  \end{flushright}

  \centering
  \vspace{5cm}
  \textsc{Лабораторная работа \textnumero \@no}\par
  {\huge\bfseries \@title\par}
  \vspace{1cm}
  {\scriptsize ФПМИ, \@group\par}
  \vspace{1mm}
  {\itshape\large \@author\par}
  \vfill
  {\small преподаватели\par}
  \vspace{2mm}
  \begin{spacing}{1.2}
  \textsc{\@tutor}\par
  \end{spacing}
  \vfill
  \large{\@date}
\end{titlepage}
}

