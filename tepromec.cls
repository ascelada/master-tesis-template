%% -------------------------------------------------------------------------------- %%
%%                                                                                  %%
%%            ||  || || //====     =====  ||    || \\   || ========                 %%
%%            ||  || || ||        ||      ||    || |\\  ||    ||                    %%
%%            ||==|| || ||        ||===|| ||    || ||\\ ||    ||                    %%	
%%            ||  || || ||             || ||    || || \\||    ||                    %%	
%%            ||  || || \\====     =====   ======  ||  \\|    ||                    %%	
%%                                                                                  %%
%%      ||==\\  ||====   //==\\  //====  //===\\ \\   || //====  =====              %%
%%      ||   \\ ||   || ||    || ||      ||   || |\\  || ||     ||                  %%
%%      ||   || ||====  ||====|| ||      ||   || ||\\ || ||===  ||===||             %%
%%      ||   // || \\   ||    || ||      ||   || || \\|| ||          ||             %%
%%      ||==//  ||  \\  ||    || \\====  \\===// ||  \\| \\====  =====              %%
%%                                                                                  %%
%% -------------------------------------------------------------------------------- %%
%%
%% EDITING THIS FILE IS RECOMMENDED FOR ADVANCED USERS ONLY!
%% EVEN IF YOU ARE AN ADVANCED USER, PROCEED WITH CAUTION!!!
%%
%% ----------------------------------------
%% This is file `tepromec.cls',
%% generated with the docstrip utility.
%% The original source files were:
%% classes.dtx  (with options: `book')
%% This is a generated file.
%% ----------------------------------------
 %%
 %% ORIGINAL SOURCE CODE:
 %%
 %% Copyright 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005
 %% 2006 2007 2008 2009 2011 2014 2015 2016
 %% The LaTeX3 Project and any individual authors listed elsewhere
 %% in this file. 
 %%
 %% This file is part of the LaTeX base system.
 %% -------------------------------------------
 %% 
 %% It may be distributed and/or modified under the
 %% conditions of the LaTeX Project Public License, either version 1.3c
 %% of this license or (at your option) any later version.
 %% The latest version of this license is in
 %%    http://www.latex-project.org/lppl.txt
 %% and version 1.3c or later is part of all distributions of LaTeX 
 %% version 2005/12/01 or later.
 %% 
 %% This file has the LPPL maintenance status "maintained".
 %% ----------------------------------------
 %%   This system is distributed in the hope that it will be useful,
 %%   but WITHOUT ANY WARRANTY; without even the implied warranty of
 %%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 %%
 %%   For error reports concerning UNCHANGED versions of this file no
 %%   more than one year old, see bugs.txt.
 %%
 %%   Please do not request updates from us directly.  Primary
 %%   distribution is through the CTAN archives.
 %%
 %% IMPORTANT COPYRIGHT NOTICE:
 %%
 %% You are NOT ALLOWED to distribute this file alone.
 %%
 %% MODIFICATION ADVICE:
 %%
 %% If you want to customize this file, it is best to make a copy of
 %% the source file(s) from which it was produced.  Use a different
 %% name for your copy(ies) and modify the copy(ies); this will ensure
 %% that your modifications do not get overwritten when you install a
 %% new release of the standard system.  You should also ensure that
 %% your modified source file does not generate any modified file with
 %% the same name as a standard file.
 %% ----------------------------------------
\NeedsTeXFormat{LaTeX2e}%[2016/12/01]
\ProvidesClass{tepromec}
 %% ----------------------------------------
 \ProcessOptions
 \RequirePackage{indentfirst,ifthen,graphics} %srcltx %lsymbol
 \RequirePackage{amsmath,latexsym,xspace,epsfig,float,amssymb}
 \RequirePackage[utf8]{inputenc}
 %% ----------------------------------------
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\newif\if@backmatter \@backmattertrue
\newif\ifpromec@frame \promec@framefalse %default
\DeclareOption{frame}{\promec@frametrue}
\if@compatibility\else 
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}
    \setlength\paperheight {\paperwidth}
    \setlength\paperwidth  {\@tempdima}}
\fi \if@compatibility
  \renewcommand\@ptsize{0}
\else \DeclareOption{10pt}{\renewcommand\@ptsize{0}} \fi
 \DeclareOption{11pt}{\renewcommand\@ptsize{1}}
 \DeclareOption{12pt}{\renewcommand\@ptsize{2}} \if@compatibility\else
 \DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse} \fi
 \DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
 \DeclareOption{draft}{\setlength\overfullrule{5pt}} \if@compatibility\else
 \DeclareOption{final}{\setlength\overfullrule{0pt}} \fi
 \DeclareOption{titlepage}{\@titlepagetrue} \if@compatibility\else
 \DeclareOption{notitlepage}{\@titlepagefalse} \fi \if@compatibility
 \@openrighttrue \else \DeclareOption{openright}{\@openrighttrue}
 \DeclareOption{openany}{\@openrightfalse} \fi \if@compatibility\else
 \DeclareOption{onecolumn}{\@twocolumnfalse} \fi
 \DeclareOption{twocolumn}{\@twocolumntrue}
 \DeclareOption{leqno}{\input{leqno.clo}}
 \DeclareOption{fleqn}{\input{fleqn.clo}} 
 \DeclareOption{openbib}{
  \AtEndOfPackage{
   \renewcommand\@openbib@code{
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
      \renewcommand\newblock{\par}}
      %PROMEC default: A4, 12pt
} \ExecuteOptions{a4paper,12pt,oneside}
\ProcessOptions
 %% ----------------------------------------
 %Modify spacing text/equation
 \AtBeginDocument{\setlength{\belowdisplayskip}{.5cm}}
 \AtBeginDocument{\setlength{\abovedisplayskip}{.5cm}}
 \AtBeginDocument{\setlength{\belowdisplayshortskip}{.5cm}}
 \AtBeginDocument{\setlength{\abovedisplayshortskip}{.5cm}}
 \AtBeginDocument{\setlength{\jot}{.5mm}}
 %% ----------------------------------------
\input{bk1\@ptsize.clo}
\setlength\lineskip{1\p@} \setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@} \@lowpenalty   51 \@medpenalty  151
\@highpenalty 301 \setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
  \def\ps@headings{
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}
      \let\@mkboth\markboth
      \def\chaptermark##1{
       \markboth { \uppercase{
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@chapapp\ \thechapter. \ 
          \fi
         \fi
       ##1}}{}}%
      \def\sectionmark##1{
      \markright { \uppercase{
        \ifnum \c@secnumdepth >\z@
          \thesection. \
        \fi
        ##1}}}}
\else
  \def\ps@headings{
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}
    \let\@mkboth\markboth
    \def\chaptermark##1{
    \markright { \uppercase{
      \ifnum \c@secnumdepth >\m@ne
        \if@mainmatter
          \@chapapp\ \thechapter. \ 
        \fi
      \fi
   ##1}}}}
\fi
\def\ps@myheadings{
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%upper right corner numbering
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
}
 %% ----------------------------------------
 %  Title page
 %% ----------------------------------------
 \if@titlepage
 \newcommand\maketitle{
 \begin{titlepage}
 \begin{center}
 	MINIST\'ERIO DA EDUCA\c{C}\~AO\\
 	UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL\\
 	PROGRAMA DE  P\'OS-GRADUA\c{C}\~AO EM ENGENHARIA MEC\^ANICA
 \end{center} \vspace{45mm} 
 \begin{center} 
 	\uppercase{\titulo}
 \end{center} \vspace{12pt} 
 \begin{center}
 	por \\ \vspace{15mm} 
	\autor
 \end{center} \vfill
 \begin{center}
	\teoudi para obtenção do Título de\\
	\md em Engenharia
 \end{center} \vfill
 \begin{center}
	Porto Alegre, \data
 \end{center}
 \end{titlepage}
 %% ----------------------------------------
 %  Aproval page
 %% ----------------------------------------
 % this is to set this page as the page ii.
 \setcounter{page}{2} 
 \thispagestyle{plain}
 \begin{center}
	\vspace*{12pt plus 0pt minus 12pt } %aligned as MS Word Template
	\titulo \\
	\null\vspace{12pt plus 0pt minus 12pt } %aligned as MS Word Template
	por \\
	\null\vspace{0cm}
	\autor \\
	\autortitle
 \end{center}  
 \null \vfill
{ \teoudi \ifthenelse{\equal{\mscoudr}{Qualifica\xspace}}{submetido\xspace}{submetida\xspace} ao Corpo Docente do Programa de P\'{o}s-Gradua\c{c}\~{a}o em Engenharia Mec\^{a}nica, PROMEC, da Escola de Engenharia da Universidade Federal do Rio Grande do Sul, como parte dos requisitos necess\'{a}rios para a obten\c{c}\~{a}o do T\'\i tulo de 
 \vspace{24pt plus 0pt minus 24pt }

 \begin{center} \md em Engenharia \end{center}
   
 \vfill   \noindent \'{A}rea de Concentra\c{c}\~{a}o: \areaconc    \vspace{18pt}

 \noindent Orientador: \orientador
 \vspace{-6pt}
 \ifthenelse{\equal{\nocoorientador}{1\xspace}}{\vfill
 \noindent Co-Orientador: \coorientador}{\ifthenelse{\equal{\nocoorientador}{0\xspace}}{}{\vfill
 \noindent  Co-Orientadores: \begin{minipage}[t]{13.3cm} \coorientador
 \end{minipage}}}
}
 \vspace{.8cm}

 \noindent
 \avalouapro

 \vspace{.8cm}

 \banca

 \vspace{ 18pt plus 0pt minus 18pt }

 \hfill  \coord $\quad$

 \hfill Coordenador do PROMEC $\quad$

 \vfill

 \begin{center}
	Porto Alegre, \datab
 \end{center}
  
 \normalsize
 \clearpage 
 \setcounter{footnote}{0}%
 \global\let\thanks\relax
 \global\let\maketitle\relax
 \global\let\@thanks\@empty
 \global\let\@author\@empty
 \global\let\@date\@empty
 \global\let\@title\@empty
 \global\let\title\relax
 \global\let\author\relax
 \global\let\date\relax
 \global\let\and\relax
} 
 %% ----------------------------------------
 %  Aproval page ends here
 %% ----------------------------------------
%\else 					% modified footnote symbols...
%\newcommand\maketitle{\par
%  \begingroup
%    \renewcommand\thefootnote{\@fnsymbol\c@footnote}
%    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}
%    \long\def\@makefntext##1{\parindent 1em\noindent
%            \hb@xt@1.8em{
%            \hss\@textsuperscript{\normalfont\@thefnmark}}##1}
%    \if@twocolumn
%      \ifnum \col@number=\@ne
%        \@maketitle
%      \else
%        \twocolumn[\@maketitle]
%      \fi
%    \else
%      \newpage
%      \global\@topnum\z@  %avoids top page figures positioning
%      \@maketitle
%    \fi
%  \endgroup
%  \setcounter{footnote}{0}
%  \global\let\thanks\relax
%  \global\let\maketitle\relax
%  \global\let\@maketitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\@title\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
%}
\def\@maketitle{
  \newpage
  \null
  \vskip 2em
  \begin{center}
  \let \footnote \thanks
    {\LARGE \@title \par}
    \vskip 1.5em
    {\large
    \lineskip .5em
      \begin{tabular}[t]{c}
        \@author
      \end{tabular}\par}
    \vskip 1em
    {\large \@date}
  \end{center}
  \par
  \vskip 1.5em}
\fi
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\frontmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \@backmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmattertrue
  \@backmatterfalse
  \pagenumbering{arabic}}
\newcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \@backmattertrue
  }
\newcommand\part{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}
    \else
      \addcontentsline{toc}{part}{#1}
    \fi
    \markboth{}{}
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \normalsize\bfseries \partname~\thepart
      \par
       \vskip 20\p@
     \fi
     \normalsize \bfseries #2\par}
    \@endpart}
\def\@spart#1{
    {\centering
     \interlinepenalty \@M
     \normalfont
     \normalsize \bfseries #1\par}
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}
              
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}
                         \typeout{\@chapapp\space \thechapter.}
                         \addcontentsline{toc}{chapter}
                                   {\protect\numberline{\thechapter}#1}
                       \else
                         \addcontentsline{toc}{chapter}{ \uppercase #1}
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{ \uppercase #1}
                    \fi
                    \chaptermark{#1}
                    \addtocontents{lof}{\protect\addvspace{10\p@}}
                    \addtocontents{lot}{\protect\addvspace{10\p@}}
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}              
\def\@makehead#1{
  \vspace*{0\p@}
  {\parindent 
   \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
      \large \bfseries \thechapter  \uppercase{#1} \par\nobreak 
       \par\nobreak
      \vskip 20\p@
     \fi
     \if@backmatter
       \large \bfseries \thechapter   \par\nobreak 
          \par\nobreak
        \vskip 20\p@
      \fi
    \fi
   \interlinepenalty\@M
  } }
%no chapter numbering
  \def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]
                 \else
                   \@makeschapterhead{#1}
                   \@afterheading
                 \fi}
                 
\def\@makeschapterhead#1{
  \vspace*{0\p@}
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \normalsize \bfseries { \uppercase #1 } \par\nobreak%
    \vskip 40\p@
  }}
  
\newcommand\section{\@startsection {section}{1}{\z@}
                                   {-3.5ex \@plus -1ex \@minus -.2ex}
                                   {2.3ex \@plus.2ex}
                                   {\normalfont\normalsize\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}
                                     {-3.25ex\@plus -1ex \@minus -.2ex}
                                     {2.3ex  \@plus .2ex}
                                     {\normalfont\normalsize\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}
                                     {-3.25ex\@plus -1ex \@minus -.2ex}
                                     {2.3ex \@plus .2ex}
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}
                                    {3.25ex \@plus1ex \@minus.2ex}
                                    {-1em}
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}
                                       {3.25ex \@plus1ex \@minus .2ex}
                                       {-1em}
                                      {\normalfont\normalsize\bfseries}}                          
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi \leftmargin  \leftmargini \setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em} \setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi \setlength  \labelsep  {.5em} \setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep} \@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty \@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}
                \item\relax}
               {\endlist}

\if@compatibility
	\newenvironment{titlepage}
	    {
	      \cleardoublepage
	      \if@twocolumn
	        \@restonecoltrue\onecolumn
	      \else
	        \@restonecolfalse\newpage
	      \fi
	      \thispagestyle{empty}
	      \setcounter{page}\z@
	    }
	    {\if@restonecol\twocolumn \else \newpage \fi
	    }
\else
	\newenvironment{titlepage}
	    {
	      \cleardoublepage
	      \if@twocolumn
	        \@restonecoltrue\onecolumn
	      \else
	        \@restonecolfalse\newpage
	      \fi
	      \thispagestyle{empty}
	      \setcounter{page}\@ne
	    }
	    {\if@restonecol\twocolumn \else \newpage \fi
	     \if@twoside\else
	        \setcounter{page}\@ne
	     \fi
	    }
\fi
\setlength\arraycolsep{5\p@} \setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@} \setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep} \skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@} \setlength\fboxrule{.4\p@} \@addtoreset
{equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@} \setlength\belowcaptionskip{10\p@}
\long\def\@makecaption#1#2{
  \vskip\abovecaptionskip
 %% ----------------------------------------
 %\caption set up
\sbox \@tempboxa{\begin{center} \begin{minipage} [t]{14cm}
\begin{center} #1 {\bf --}  #2 \end{center} \end{minipage}
\end{center}}
  \ifdim \wd\@tempboxa >\hsize
    #1 {\bf --} #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.25cm}
\newcommand\@tocrmarg{2.5cm}
\newcommand\@dotsep{1.8}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{   \centering\contentsname 
        \@mkboth{
            \uppercase\contentsname}{ \uppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@part[2]{
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}
    \addvspace{2.25em \@plus\p@}
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
      \normalsize \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
      \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{  \uppercase{
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.25cm}
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak{\normalfont\dotfill}\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi} }
 %% ----------------------------------------
 %list of figures
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%								
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{ \hfill {\MakeUppercase{\listfigurename} } \hfill }
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{0cm}{0cm}}
 %% ----------------------------------------
 %list of tables
\newcommand\listoftables{%							
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\hfill{ \MakeUppercase{\listtablename} }\hfill
      \@mkboth{ \uppercase\listtablename}{ \uppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\xdef\@tempa{\@nameuse{b@#1}}
 %% ----------------------------------------
 %bibliography 
\setlength\bibindent{1.25cm}
\newenvironment{thebibliography}[1]
    {\newpage\chapter*{\bibname
      \@mkboth{ \uppercase\bibname}{ \uppercase\bibname}}
      \list{\@biblabel{\@arabic\c@enumiv}}
           {\settowidth\labelwidth{\@biblabel{#1}}
            \setlength{\leftmargin}{0em}
            \setlength{\itemindent}{1cm}
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000
      \sfcode`\.\@m}
     {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
     \endlist}
 %% ----------------------------------------
 %biblabel modifier
\renewcommand{\@biblabel}[1]{\hfill}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
 %% ----------------------------------------
 %renaming
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]
                \@mkboth{ \uppercase\indexname}
                        { \uppercase\indexname}
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}    
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{
    \parindent 1em
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\annexname{Annex}
\newcommand{\listsymbolname}{{\normalsize\bf LISTA DE S\'{I}MBOLOS} }
\renewcommand{\contentsname}{\normalsize\bf \'{I}NDICE}
\renewcommand{\listfigurename}{\centering{\normalsize\bfseries LISTA DE FIGURAS}}
\renewcommand{\listtablename}{\normalsize\bf LISTA DE TABELAS}
\renewcommand{\bibname}{\normalsize\bf REFER\^{E}NCIAS BIBLIOGR\'{A}FICAS}
\renewcommand{\indexname}{\normalsize\bf \'{I}NDICE}
\renewcommand{\figurename}{Figura}
\renewcommand{\tablename}{Tabela}
\renewcommand{\partname}{Parte}
\renewcommand{\chaptername}{CAP\'{I}TULO}
\renewcommand{\appendixname}{AP\^{E}NDICE}
\renewcommand{\annexname}{ANEXO}
\def\today{\number\day\space de\space\ifcase\month\or
  Janeiro\or Fevereiro\or Mar\c{c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi
  \space de\space \number\year}
\setlength\columnsep{10\p@} \setlength\columnseprule{0\p@}
\pagestyle{headings} \pagenumbering{arabic} \if@twoside \else
  \raggedbottom
\fi \if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
 %% ----------------------------------------
 %equations numbering
\newcounter{saveeqn}\newcommand{\alpheqn}{\setcounter{saveeqn}{\value{equation}}
\stepcounter{saveeqn}\setcounter{equation}{0}\renewcommand{\theequation}{
{\mbox{\arabic{chapter}.\arabic{saveeqn}\alph{equation}}}}}
\newcommand{\reseteqn}{\setcounter{equation}{\value{saveeqn}}
\renewcommand \theequation {\arabic{chapter}.\@arabic\c@equation}}
\setlength{\parindent}{1.25cm}
\renewcommand{\baselinestretch}{1.5} 
\pagestyle{plain}
 %% ----------------------------------------
 %  USER INPUTS
 %% ----------------------------------------
\newcommand{\DocTitulo}[1]  { \newcommand{\titulo}{ {\uppercase{#1}} } }
\newcommand{\DocData}[1]   {\newcommand{\data}{#1\xspace}}
\newcommand{\DocDataB}[1]   {\newcommand{\datab}{#1\xspace}}
\newcommand{\DocOrientador}[1] {\newcommand{\orientador}{#1\xspace}}
\newcommand{\DocNoCoorientador}[1] {\newcommand{\nocoorientador}{#1\xspace}}
\newcommand{\DocCoorientador}[1] {\newcommand{\coorientador}{#1\xspace}}
\newcommand{\DocAreaConc}[1]{\newcommand{\areaconc}{#1\xspace}}
\newcommand{\DocAutor}[1]{\newcommand{\autor}{#1}}
\newcommand{\DocAutorTitle}[1]{\newcommand{\autortitle}{#1}}
\newcommand{\DocBanca}[1]{\newcommand{\banca}{#1\xspace}}
\newcommand{\DocBancaA}[1]{\newcommand{\bancaA}{#1\xspace}}
\newcommand{\DocBancaB}[1]{\newcommand{\bancaB}{#1\xspace}}
\newcommand{\DocBancaC}[1]{\newcommand{\bancaC}{#1\xspace}}
\newcommand{\DocCoord}[1]{\newcommand{\coord}{#1\xspace}}
\newcommand{\DocMScouDr}[1]{\newcommand{\mscoudr}{#1\xspace}}
\newcommand{\DocDef}[1]{\newcommand{\deff}{#1}}
\newcommand{\DocTituloIng}[1]  {\newcommand{\tituloing}{#1\xspace}}
\newcommand{\DocPalavrasChave}[1] {\newcommand{\printkeywordspt}{#1\xspace}}
\newcommand{\DocKeywords}[1] {\newcommand{\printkeywordsen}{#1\xspace}}
\newcommand{\DocKeywordsExtra}[1] {\newcommand{\printkeywordsextra}{#1\xspace}}
\newcommand{\DocResumo}[1] {\newcommand{\printresumo}{
								 \thispagestyle{plain}
								 \chapter*{ RESUMO}

								 \noindent#1\xspace
								 
								 \null\vspace{10mm}
								 
								 \noindent Palavras-chave: \printkeywordspt
								 }
								 }
\newcommand{\DocAbstract}[1] {\newcommand{\printabstract}{
				\thispagestyle{plain}			
				\chapter*{\bf ABSTRACT} 		 

				{\noindent#1\xspace}				
				
				\null\vspace*{10mm}
				
				{\noindent Keywords: \printkeywordsen }
							
				\null\vfill 
				}	
				}
\newcommand{\DocNResumosExtra}[1] {\newcommand{\noabstractextra}{#1\xspace}}
\newcommand{\DocAbstractExtraName}[1] {\newcommand{\absextraname}{#1\xspace}}
\newcommand{\DocTituloExtra}[1]  {\newcommand{\tituloextra}{#1\xspace}}
\newcommand{\DocResumoExtra}[1] {\newcommand{\printresumoextra}{				
						\thispagestyle{plain}			
						\chapter*{  \absextraname } 

						\null \vspace*{15mm}
						
						\noindent\ignorespaces#1 \xspace
						
						\null \vspace*{10mm}
						
						{\noindent Keywords: \printkeywordsextra}
						
						\null\vfill	 
						}	
						}
\newcommand{\makeresumos}{
					\printresumo
					\printabstract
					\ifthenelse{\equal{\noabstractextra}{1\xspace}}{\printresumoextra\xspace}
					{}
					}	 
\@onlypreamble{\DocTitulo}
\@onlypreamble{\DocData}
\@onlypreamble{\DocDataB}
\@onlypreamble{\DocAutor}
\@onlypreamble{\DocMScouDr}
\@onlypreamble{\DocOrientador}
\@onlypreamble{\DocCoorientador}
\@onlypreamble{\DocAreaConc}
\@onlypreamble{\DocBanca}
\@onlypreamble{\DocBancaA}
\@onlypreamble{\DocBancaB}
\@onlypreamble{\DocBancaC}
\@onlypreamble{\DocCoord}
\@onlypreamble{\DocDef}
\@onlypreamble{\DocTituloIng}
\@onlypreamble{\DocResumo}
\@onlypreamble{\DocAbstract}
\@onlypreamble{\DocPalavrasChave}
\@onlypreamble{\DocKeywords}
\@onlypreamble{\DocNumExtra}
\@onlypreamble{\DocKeywordsExtra}
%\@onlypreamble{\DocLast}
%\@onlypreamble{\DocFirst}
 %% ----------------------------------------
 %optional 3rd language
\newcommand{\DocAutorExtra}[1]  {\newcommand{\autorextra}{#1\xspace}}
\newcommand{\DocOrientExtra}[1]  {\newcommand{\orientextra}{#1\xspace}}
\newcommand{\DocDrExtra}[1]  {\newcommand{\drextra}{#1\xspace}}
\newcommand{\DocDescrExtra}[1]  {\newcommand{\descrextra}{#1\xspace}}
\newcommand{\DocDataExtra}[1]  {\newcommand{\dataextra}{#1\xspace}}
\@onlypreamble{\DocTituloExtra}
\@onlypreamble{\DocAutorExtra}
\@onlypreamble{\DocOrientExtra}
\@onlypreamble{\DocDrExtra}
\@onlypreamble{\DocDescrExtra}
\@onlypreamble{\DocDataExtra}
\@onlypreamble{\DocResumoExtra}
\newcommand{\teoudi}{
\ifthenelse{\equal{\mscoudr}{Mestre\xspace}}{ Disserta\c{c}\~{a}o\xspace}
{\ifthenelse{\equal{\mscoudr}{Doutor\xspace}}{Tese\xspace}
{Exame de Qualifica\c{c}\~{a}o\xspace}}}
\newcommand{\mdq}{
\ifthenelse{\equal{\mscoudr}{Mestre\xspace}}{Mestrado\xspace}{\ifthenelse{\equal{\mscoudr}{Doutor\xspace}}{Doutorado\xspace}{Doutorado\xspace}}}
\newcommand{\md}{
\ifthenelse{\equal{\mscoudr}{Mestre\xspace}}{Mestre\xspace}{\ifthenelse{\equal{\mscoudr}{Doutor\xspace}}{Doutor\xspace}{Doutor\xspace}}}
\newcommand{\avalouapro}{
\ifthenelse{\equal{\deff}{Avaliacao}}{Comiss\~{a}o de Avalia\c{c}\~{a}o:
}{Aprovada por:}}
 %% ----------------------------------------
 %  Language and encoding
 %% ----------------------------------------
\RequirePackage[brazil]{babel}
\addto\captionsbrazil{\renewcommand{\contentsname}{
													\begin{center} 
											 			\uppercase{\'Indice}
										 			\end{center}}
								    				}
\RequirePackage[T1]{fontenc} %helpfull for dead keys
 %% ----------------------------------------
 %  Margins
 %% ----------------------------------------
\RequirePackage{etoolbox}
\ifpromec@frame
  	\RequirePackage[showframe,top = 30mm,left = 30mm,bottom = 20mm,right  = 20mm,headheight = 10mm, headsep = 10mm,footskip = 10mm]{geometry}
\else
	\RequirePackage[top = 30mm,left = 30mm,bottom = 20mm,right  = 20mm,headheight = 10mm, headsep = 10mm,footskip = 10mm]{geometry}
\fi
 %% ----------------------------------------
 %  Titles
 %% ----------------------------------------
\RequirePackage{titlesec}
\titleformat{\chapter}{\scshape\normalfont\bfseries}{\makebox[1.25cm][l]{\thechapter}}{0pt}{}
\titleformat{\section}{\normalfont\bfseries}{\makebox[1.25cm][l]{\thesection}}{0pt}{}
\titleformat{\subsection}{\normalfont\bfseries}{\makebox[1.25cm][l]{\thesubsection}}{0pt}{}
\titleformat{\subsubsection}{\normalfont\bfseries}{\makebox[1.5cm][l]{\thesubsubsection}}{0pt}{}
\titlespacing*{\chapter}{0pt}{-22pt}{1.5em}[0pt]
 %% ----------------------------------------
 %  Index (TOC)
 %% ----------------------------------------
\RequirePackage[titles]{tocloft}
\renewcommand\cftfigpresnum{Figura~ }
\renewcommand\cfttabpresnum{Tabela~ }
\newlength\mylena
\settowidth\mylena{\cftfigpresnum}
\newlength\mylenb
\settowidth\mylenb{\cfttabpresnum}
\addtolength\cftfignumwidth{\mylena}
\addtolength\cfttabnumwidth{\mylenb}
 %lengths adjustment in accordance with MS Word Template
\setlength{\cfttabindent}{0cm}
\setlength{\cftfigindent}{0cm}
\setlength{\cftsecindent}{0cm}
\setlength{\cftsubsecindent}{0cm}
\setlength{\cftsubsubsecindent}{0cm}
\setlength{\cftchapnumwidth}{1.250cm}
\setlength{\cftsecnumwidth}{1.250cm}
\setlength{\cftsubsecnumwidth}{1.250cm}
\setlength{\cftsubsubsecnumwidth}{1.250cm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
 %one half spacing
\RequirePackage[nodisplayskipstretch]{setspace}
 %packages used by ABNT bibliography
\usepackage{enumitem}
\usepackage[square]{natbib}
 %% ----------------------------------------
 %  Apendix
 %% ----------------------------------------
\newcommand\appendix{\par
\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
\renewcommand{\appendixname}{AP\^ENDICE}
\renewcommand\@chapapp{\appendixname}
\addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{35mm}}
\addtocontents{toc}{\protect\renewcommand*\protect\cftchappresnum{\@chapapp\ }}
\titleformat{\chapter}{\scshape\normalfont}{\bfseries \@chapapp\ \thechapter \enspace -- \enspace }{0pt}{}
%resets counters NEED to comment and transfer to document -> multiple resets...
%	\setcounter{chapter}{0}
%	\setcounter{section}{0}
%	\setcounter{figure}{0}
%	\setcounter{table}{0}
	\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
	\renewcommand{\thetable}{\thechapter.\arabic{table}}
	\renewcommand\thechapter{\@Alph\c@chapter}
}
 %% ----------------------------------------
 %  Annex
 %% ----------------------------------------
\newcommand\annex{
	\par
	\renewcommand{\appendixname}{ANEXO}
    \renewcommand\@chapapp{\appendixname}  
  	\addtocontents{toc}{\protect\renewcommand*\protect\cftchappresnum{\@chapapp\ }}
	\addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{35mm}}
%resets counters NEED to comment and transfer to document -> multiple resets...
%	\setcounter{chapter}{0}
%	\setcounter{section}{0}
%    \setcounter{figure}{0}
%    \setcounter{table}{0}
    \renewcommand\thechapter{\@Roman\c@chapter}
    \titleformat{\chapter}{\scshape\normalfont}{\bfseries ANEXO \thechapter \enspace -- \enspace }{0pt}{}
}
\endinput
%% %% The file `tepromec.cls' ends here.