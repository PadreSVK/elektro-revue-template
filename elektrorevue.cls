%% Sablona pro Elektrorevue

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{elektrorevue}
\LoadClass[10pt,twocolumn]{article}


\RequirePackage{balance}
\RequirePackage{fix-cm}
\RequirePackage{fixltx2e}
\RequirePackage[IL2]{fontenc}
% \RequirePackage{hyperref}
\PassOptionsToPackage{hyphens}{url}\usepackage[breaklinks=true,hypertexnames=false]{hyperref}
\RequirePackage[pdftex]{graphicx} 
\RequirePackage{fancyhdr}
\RequirePackage{amsmath}
\RequirePackage{afterpage}
\RequirePackage{acronym}

\RequirePackage[a4paper, text={182mm,242mm}, centering]{geometry}

% specialni prikazy souboru tridy:
\setlength\columnsep{4mm}

% predefinovani velikosti pisem pro 10pt dokument:
\def\small{\@setfontsize{\small}{8}{10pt}} % pro zmensene pismo 
\def\normalsize{\@setfontsize{\normalsize}{10}{12pt}} % pro bezny text
\def\large{\@setfontsize{\large}{12}{14pt}} % pro nadpisy druhe urovne \subsection
\def\Large{\@setfontsize{\Large}{14}{17pt}} % pro nadpisy prvni urovne \section
\def\LARGE{\@setfontsize{\LARGE}{17}{20pt}} % pro hlavni nadpis
\renewcommand\section{%
	\@startsection{section}{1}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{ \normalfont\large\bfseries\scshape }}

\renewcommand\subsection{%
	\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{ \normalfont\bfseries }}

\renewcommand\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{ \normalfont}}

% nove prikazy:
\newcommand\nazevClanku[1]{\vspace{20pt}\centering{\bf\LARGE #1}\\\vspace{20pt} }
\newcommand\autor[1]{#1\\\vspace{12pt}}
\newcommand\instituce[1]{\small #1\\}
\newcommand\email[1]{\small Email: #1\\\vspace{10pt}}
\newcommand\abstrakt[1]{{{\noindent\textit{\textbf{Abstrakt --}}} \it  #1} \\}

\providecommand\uv[1]{\quotedblbase #1\textquotedblleft}	% ceske uvozovky

