\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[hw an2dl template]

% Class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}

\RequirePackage{enumitem}
\setlist[itemize]{noitemsep, leftmargin=15pt}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{cite}
\RequirePackage{lipsum}
\RequirePackage{multicol}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage[table]{xcolor}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\RequirePackage{placeins}
\RequirePackage{geometry}
\RequirePackage{subcaption}
\geometry{
    paper=a4paper,
    top=2cm,
    bottom=2cm,
    left=2cm,
    right=2cm
    }

\newcommand{\teamname}[1]{
    \def\@teamname{#1}}

\newcommand{\member}[4]{%
    \expandafter\def\csname name#1\endcsname{#2}% Name
    \expandafter\def\csname usern#1\endcsname{#3}% Username
    \expandafter\def\csname id#1\endcsname{#4}% ID
}

% Command to define the title

% Example usage inside a header generator
\newcommand{\head}{%
    \begin{figure}[H]
        \raggedright
        \includegraphics[scale=0.4]{assets/polimi.png} \hfill \includegraphics[scale=0.3]{assets/airlab.jpeg}
    \end{figure}
    \vspace{5mm}
    \begin{center}
        {\Large \textbf{AN2DL - Second Homework Report}}\\
        \vspace{2mm}
        % Change with your Team Name
        {\Large \textbf{\@teamname}}\\
        \vspace{2mm}
        {\large 
            \csname name1\endcsname, \csname name2\endcsname, \csname name3\endcsname, \csname name4\endcsname\\
        }
        \vspace{2mm}
        {
            \csname usern1\endcsname, \csname usern2\endcsname, \csname usern3\endcsname, \csname usern4\endcsname\\
        }
        \vspace{2mm}
        {
            \csname id1\endcsname, \csname id2\endcsname, \csname id3\endcsname, \csname id4\endcsname\\
        }
        \vspace{5mm}
        \today
    \end{center}
}