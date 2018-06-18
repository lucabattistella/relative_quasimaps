\makeatletter
%---------------------------------------------------------------------------
%Please  be  aware that the use of this LaTeX class file is governed by the
%following conditions:
%
% based on the original LaTeX ARTICLE DOCUMENT STYLE
% Copyright (C) 1988, 1989 by Leslie Lamport
%
% Rules of Use
%
% You are NOT ALLOWED to change this file.
%
%This class file is made available for use by authors who wish to prepare an
%article for publication in the Journals  
%published by Oxford University Press Ltd.  The user may not exploit any part of
%the class file commercially.
%
%This class file is provided on an `as is'  basis, without warranties of any
%kind, either expressed or implied, including but not limited to warranties of
%title,   or  implied  warranties  of  merchantablility  or  fitness  for  a
%particular purpose.  There will be no duty on the author[s] of the software
%or  Oxford University Press Ltd to correct any errors or defects in the software.
%Any  statutory  rights you may have remain unaffected by your acceptance of
%these rules of use.
%---------------------------------------------------------------------------
%

\def\update{2009/01/31 v2.00}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oupau}[\update\ Oxford University Press]

\newif\if@timesfont
\DeclareOption{times}{%
\@timesfonttrue}

\if@timesfont
\RequirePackage{times}
\fi

\newif\if@doublespace
\DeclareOption{doublespace}{%
\@doublespacetrue}

\newif\if@openbib
\@openbibfalse

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}
\if@doublespace
\RequirePackage{setspace}
\doublespacing
\fi

\RequirePackage{graphicx}
\RequirePackage{pifont,latexsym,ifthen,amsthm,rotating,calc,textcase,booktabs}
\RequirePackage{amsfonts,amssymb,amsbsy,amsmath}
\RequirePackage[errorshow]{tracefnt}

\def\textfontii{\the\textfont\tw@}
\def\AmSTeX{{\textfontii A\kern-.1667em%
  \lower.5ex\hbox{M}\kern-.125emS}-\TeX\spacefactor1000 }
  
\@twosidetrue
\flushbottom
\frenchspacing
\textwidth 170.5mm
\textheight 249mm
\columnwidth 83.25mm

%Trim sizes
\setlength\voffset{-1in}
\setlength\hoffset{-1in}
\topmargin 10mm
\setlength\oddsidemargin{18mm}%back margin on odd pages
\setlength\evensidemargin{21.5mm}%fore margin on even pages
\setlength\paperwidth{210mm}
\setlength\paperheight{297mm}
%Needed to set PDF page size
\special{papersize=210mm,297mm}

\parindent 2em
\headsep 18pt
\headheight 12pt
\footskip 26pt

\brokenpenalty=10000%
\clubpenalty=9999%
\widowpenalty=9999%
\finalhyphendemerits=14000%
\doublehyphendemerits=75000%
\lefthyphenmin=3%
\righthyphenmin=3%
\pretolerance=1000%
\tolerance=2000%
\hfuzz=0.99pt%
\hbadness=8000
\vbadness=9000

\thinmuskip = 3mu
\medmuskip = 4mu
\thickmuskip = 5mu

\setcounter{topnumber}{5}
\def\topfraction{1}
\setcounter{bottomnumber}{5}
\def\bottomfraction{.8}
\setcounter{totalnumber}{10}
\def\textfraction{0}
\renewcommand{\floatpagefraction}{0.95}
\renewcommand{\dblfloatpagefraction}{0.95}
\renewcommand{\dbltopfraction}{1}

\renewcommand\normalsize{%
\fontsize{10.3}{12pt plus 0.10pt minus 0.10pt}\selectfont%
   %\@setfontsize\normalsize\@xipt{12pt plus 0.10pt minus 0.10pt}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
\fontsize{9.3}{10pt plus 0.10pt minus 0.10pt}\selectfont%
   %\@setfontsize\small\@xpt{11pt plus 0.10pt minus 0.10pt}
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
\fontsize{8.3}{9}\selectfont%
   %\@setfontsize\footnotesize\@viiipt{9}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand{\scriptsize}{\fontsize{7.3}{8.5pt}\selectfont}
\renewcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\newcommand{\tabsize}{\fontsize{8.8}{10.5pt}\selectfont}
%\newcommand{\addresssize}{\fontsize{8.3}{10pt}\selectfont}
\newcommand{\addresssize}{\fontsize{11}{13pt}\selectfont}
%\newcommand{\titlesize}{\fontsize{18.3}{20pt}\selectfont}
\newcommand{\titlesize}{\fontsize{12}{14pt}\selectfont}
\newcommand{\authsize}{\fontsize{12}{14pt}\selectfont}
\newcommand{\sectionheadsize}{\fontsize{11}{13pt}\selectfont}

\def\address#1{\gdef\@address{#1}}

\newbox\absbox
\def\abstract{\lrbox\absbox
  \tabsize\normalfont
  \noindent}
\def\endabstract{\endlrbox}

%\def\keywords#1{%
%  \gdef\@keywords{%
%    KEY WORDS\hspace*{1.75em}\ignorespaces#1}}
%\let\@keywords\@empty

\def\received#1{%
\gdef\@received{Received #1}}
\newcommand\revised[2][Revised]{%
\g@addto@macro\@revised{{; #1 #2}}}
\let\@revised\@empty
\newcommand\accepted[2][Accepted]{%
\g@addto@macro\@accepted{{; #1 #2}}}
\let\@accepted\@empty

\setlength{\skip\footins}{17pt}
\renewcommand{\footnoterule}{\rule{0pc}{0pt}}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\long\def\@makefntext#1{\parindent 1em%
\noindent{$\m@th^{\@thefnmark}$}#1}

%\def\corraddr#1{%
%  \gdef\@corraddr{%
%    \footnotetext[1]{Correspondence to: #1}\stepcounter{footnote}}}
%\let\@corraddr\@empty
%\def\corrauth{\footnotemark[1]}

\def\affilnum#1{${}^{\text{\normalfont#1}}$}
\def\affil#1{${}^{\text{\normalfont#1}}$}
\def\comma{$^{\text{,}}$}

\renewcommand\maketitle{\par
  \begingroup
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{title}\label{FirstPage}
    %\@corraddr
    \footnotetext{\@received\@revised\@accepted}
    \@communic
    \markboth{\@abbauthor}{\@shtitle}
  \endgroup
  %\setcounter{footnote}{0}%
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@address\@empty
  \global\let\corraddr\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \null
  \if@doublespace
\vskip 30pt
\else  
  \vskip 30pt %
\fi
%\rule{\textwidth}{0.5pt}
  \begin{flushleft}%
    {\titlesize\bf \@title \par}%
    \vskip 2em%
    {\large
      \lineskip .5em%
      %
        \authsize\bf\@author
      \par}%
      \vskip 6pt
 {\addresssize
      \lineskip .5em%
      %
        {\@address}
      \par}% 
    \vskip 10pt
    \@correspdetails
    \vskip 48pt%
    {\unhbox\absbox\par}
  \end{flushleft}%
   %{\lineskip .5em%
        %\hspace*{0.025\textwidth}{\scriptsize\@keywords}
   %   \par}
  \vspace*{-1em}
  }
 
\def\startpage{\pageref{FirstPage}}
\def\endpage{\pageref{LastPage}}

% Journal options
\def\volyear{0000}
\def\papID{rnn000}
\def\DOI{XXX000}
\def\journalname{International Mathematics Research Notices}
\def\journalabb{imrn}
\def\habbauthor{}
\def\headtitle{}
\def\title#1{\gdef\@title{#1}\def\headtitle{#1}}

% Author options
\def\volumeyear#1{\def\volyear{#1}}
\def\paperID#1{\def\papID{#1}}
\def\shorttitle#1{\gdef\@shtitle{#1}}
\let\@shtitle\@empty
\def\abbrevauthor#1{\gdef\@abbauthor{#1}}
\let\@abbauthor\@empty
\def\headabbrevauthor#1{\def\habbauthor{#1}}

\def\correspdetails#1{%
  \gdef\@correspdetails{%
    \textit{Correspondence to be sent to: #1}}}
\let\@correspdetails\@empty

\def\communicated#1{%
  \gdef\@communic{%
    \footnotetext{Communicated by\ #1}}}
\let\@communic\@empty

\gdef\copyrightlineone{\copyright\ The Author \volyear.\ Published by
Oxford University Press. All rights reserved. For permissions,}
\gdef\copyrightlinetwo{please e-mail: journals.permissions@oxfordjournals.org.}
%\def\runningheads#1#2{\markboth{\MakeTextUppercase{#1}}{\MakeTextUppercase{#2}}}
%\markboth{\MakeTextUppercase{\abbauthor}}{\MakeTextUppercase{\shtitle}}

\def\ps@title{%
\def\@oddhead{\setlength{\fboxsep}{0pt}%
\begin{tabular}[b]{@{}l@{}}%
{\footnotesize \habbauthor.\ (\volyear) ``\headtitle ,''}\\[-3pt]
{\footnotesize \journalname,\ Vol.\ \volyear,\ Article ID\ \papID,\ \endpage\ pages.}\\[-3pt]
{\footnotesize doi:10.1093/\journalabb/\papID}
\end{tabular}\hss\hfill}%

\let\@evenhead\@oddhead
\def\@oddfoot{\setlength{\fboxsep}{0pt}%
\begin{tabular}[t]{@{}l@{}}%
\\[-16pt]
\footnotesize\copyrightlineone\\[-1pt]
\footnotesize\copyrightlinetwo
\end{tabular}\hss\hfill}%
%\def\@oddfoot{\parbox[t]{\textwidth}{%
%{\footnotesize\@received\@revised\@accepted\\[-1pt]
%\footnotesize\communicatedline\\[3pt]
%\footnotesize\copyrightlineone\\[-1pt]
%\footnotesize\copyrightlinetwo}%
%}\hfill}%
\let\@evenfoot\@oddfoot}

\def\ps@oupau{%
%\def\@evenhead{{\tabsize\thepage\hfill\leftmark\hfill\phantom{\thepage}}}
%\def\@oddhead{{\tabsize\phantom{\thepage}\hfill\rightmark\hfill\thepage}}
\def\@evenhead{{\tabsize\thepage\hspace*{1em}\leftmark\hfill\phantom{\thepage}}}
\def\@oddhead{{\tabsize\phantom{\thepage}\hfill\rightmark\hspace*{1em}\thepage}}
\let\@evenfoot\@empty%
\let\@oddfoot\@empty}%

\def\@seccntformat#1{\csname the#1\endcsname\quad}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{{\rm \@seccntformat{#1}}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}

\renewcommand\figurename{Fig.}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\textbf{#1.}\hspace*{1em}#2}%
  \ifdim \wd\@tempboxa >\hsize
    \textbf{#1.}\hspace*{1em}#2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-19pt \@plus -6pt \@minus -2pt}%
                                   {8pt \@plus3pt \@minus2pt}%
                                   {\normalfont\sectionheadsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-16pt \@plus -6pt \@minus -4pt}%
                                     {6pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-16pt \@plus -6pt \@minus -4pt}%
                                     {6pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\normalsize\itshape}}

\def\enumerate{\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\itemsep 0pt\parsep 0pt
         \def\makelabel##1{\hss\llap{##1}}}\fi}

\let\endenumerate =\endlist

\def\itemize{\ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
\edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
\list{\csname\@itemitem\endcsname}{\itemsep 0pt\parsep 0pt
\def\makelabel##1{\hss\llap{##1}}}\fi}

\let\enditemize =\endlist

%\usepackage[tableposition=top]{caption}
%\DeclareCaptionFont{tabsize}{\tabsize}
%\DeclareCaptionLabelSeparator{oupperiod}{.\hspace*{1ex}}
%\captionsetup{font=tabsize,labelsep=oupperiod,justification=centerlast}

\providecommand{\qedsymbolthm}{\openbox}
\DeclareRobustCommand{\qedthm}{%
  \ifmmode \mathqed
  \else
    \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
    \quad\hbox{\qedsymbolthm}%
  \fi
}
\def\@begintheorem#1#2[#3]{%
  \pushQED{\qedthm}\deferred@thm@head{\the\thm@headfont \thm@indent
    \@ifempty{#1}{\let\thmname\@gobble}{\let\thmname\@iden}%
    \@ifempty{#2}{\let\thmnumber\@gobble}{\let\thmnumber\@iden}%
    \@ifempty{#3}{\let\thmnote\@gobble}{\let\thmnote\@iden}%
    \thm@swap\swappedhead\thmhead{#1}{#2}{#3}%
    \the\thm@headpunct
    \thmheadnl % possibly a newline.
    \hskip\thm@headsep
  }%
  \ignorespaces}
\def\@endtheorem{\popQED\endtrivlist\@endpefalse }

\theoremstyle{definition}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{exercise}[theorem]{Exercise}

\newcommand{\filledbox}{\leavevmode
  \hbox to.77778em{%
  \hfil\vbox to.675em{\hrule width.6em height.6em}\hfil}}  
\renewcommand{\qedsymbol}{\filledbox}
\renewenvironment{proof}[1][\proofname]{\par\noindent
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \textbf
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
  
\newcommand\ack{\section*{Acknowledgement}}
\newcommand\acks{\section*{Acknowledgements}}

%\renewenvironment{thebibliography}{%
%\section*{\refname}
%\list{\@biblabel {\theenumiv }}{\topsep=0\p@\parsep=0\p@
%\partopsep=0\p@\itemsep=1\p@\labelsep=0\p@\itemindent=-8\p@
%\labelwidth=0\p@\leftmargin=8\p@
%}\footnotesize\rm
%\def\newblock{\ }
%\sloppy\clubpenalty4000\widowpenalty4000
%\sfcode`\.=1000\relax}{\endlist}

\renewenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\uppercase{\refname}}{\uppercase{\refname}}}%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \if@openbib
              \advance\leftmargin\bibindent
              \itemindent -\bibindent
              \listparindent \itemindent
              \parsep \z@
            \fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand{\theenumiv}{\arabic{enumiv}}}%
      \if@openbib
        \renewcommand{\newblock}{\par}
      \else
        \renewcommand{\newblock}{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\AtEndDocument{%
\label{LastPage}}

\newcommand\etal{\emph{et~al.}}

\usepackage[square,comma,numbers]{natbib}

\pagestyle{oupau}
\normalsize
\sloppy
\makeatother
