%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   UFCA Exercise Class File                                                       %%
%%   @author: Laszlon Rodrigues da Costa - 31-08-2025                               %%
%%   This class defines the pattern used in the exercises of the UFCA.              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufcaexercicio}[2025/12/08 UFCA exercise]

\newcommand{\headlineolor}{\normalcolor}
% \LoadClass[onecolumn, a4paper, twoside]{article} %% this template is based on the article tamplate. 
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\definecolor{slcolor}{HTML}{FFFFFF}

\def\hw@ptsize{12pt} % https://tex.stackexchange.com/a/634138/215221
\DeclareOption{10pt}{\def\hw@ptsize{10pt}}
\DeclareOption{11pt}{\def\hw@ptsize{11pt}}
\DeclareOption{12pt}{\def\hw@ptsize{12pt}}
\def\hw@side{oneside}
\DeclareOption{oneside}{\def\hw@side{oneside}}
\DeclareOption{twoside}{\def\hw@side{twoside}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax
\LoadClass[\hw@ptsize, \hw@side]{amsart}
\RequirePackage[a4paper, top=2cm, bottom=2.5cm, left=2cm, right=2cm]{geometry}
\RequirePackage{lmodern, enumitem}
\RequirePackage{hwsymb, hwlst, hwcmd}

\hypersetup {
  pdfstartview=FitH,
  colorlinks=true
}

\AtBeginDocument{
  \hypersetup {
    pdftitle={\@title},
    pdfauthor={\@author},
    pdfsubject={}
  }
}


\newcommand{\university}{Universidade Federal do Cariri}

\RequirePackage{anyfontsize}
\RequirePackage{multirow}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Creating the header of the document.
%%  This header is composed by a table with the information about the institution,
%%  course, student and others.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeheaderexercise}{
    \begin{table}
        \fontsize{0.38cm}{0.5cm}\selectfont 
        \begin{tabular}{lp{9cm}p{4cm}}
        \multirow{5}{*}{\includegraphics[scale=0.25]{logoUFCA.png}} & &\\
                & \multicolumn{2}{l}{\textbf{Curso:} \graduate{} } \\
                & \textbf{Disciplina:} \course{} & \textbf{Código:} \codeCourse{}             \\ 
                & \multicolumn{2}{l}{\textbf{Professor(a):} \prof{}}                 \\  
                & \textbf{Semestre:} \semester{} &  \textbf{Data:}     \\ 
                \hline 
        \end{tabular}
        \end{table}
        \vspace{4cm}
        \fontsize{0.38cm}{0.5cm}\selectfont 
        \begin{center}
            \centering{\textbf{\theme{}}}
        \end{center}        
}

\newcommand{\makeheaderexam}{
    \begin{table}
        \fontsize{0.38cm}{0.5cm}\selectfont 
        \begin{tabular}{lp{9cm}p{4cm}}
        \multirow{5}{*}{\includegraphics[scale=0.25]{logoUFCA.png}} & \multicolumn{2}{l}{\textbf{Curso:} \graduate{}}   \\
                & \textbf{Disciplina:} \course{} & \textbf{Código:} \codeCourse{}             \\ 
                & \multicolumn{2}{l}{\textbf{Professor(a):} \prof{}}                 \\  
                & \textbf{Semestre:} \semester{} &  \textbf{Data:}     \\ 
                & \textbf{Aluno:} \student{} & \textbf{Matrícula:} \registration{}  \\
                \hline
        \end{tabular}
        \end{table}
        \vspace{4cm}
        \fontsize{0.38cm}{0.5cm}\selectfont 
        \begin{center}
            \centering{\textbf{\theme{}}}
        \end{center}        
}


\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setcounter{secnumdepth}{0}

\newcommand{\points}[1]{
    \fontsize{0.38cm}{0.1cm}\selectfont 
    \fontfamily{lmr}
    \textbf{(#1 pontos)}
}

\RequirePackage{amssymb}
\RequirePackage{lmodern}
\RequirePackage{enumitem}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Creating the instructions of the document.
%  This instructions are based on the pattern of exams of UFC.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeinstructions}
{
    \fontsize{0.38cm}{0.2cm}\selectfont 
    \textbf{\textcolor{red}{Leia as Instruções:}} 


    \fontfamily{lmss}
    \fontsize{0.35cm}{0.2cm}\selectfont 
    \newenvironment{instlist}
    {
        \renewcommand{\labelitemi}{\color{black}$\bullet$}\bfseries
    \begin{itemize}\setlength\itemsep{0em}}
    {\end{itemize}}   
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Environment for questions
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \newenvironment{question}{
%     \fontfamily{lmr}
%     \begin{enumerate}[topsep=0pt,itemsep=5ex,partopsep=1ex,parsep=1ex]}{\end{enumerate}
% }


