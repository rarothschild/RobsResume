%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Latex Resume Template
% Robert Rothschild
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2022/09/30 v1 Resume class]
\LoadClass[11pt]{article} % Font size and paper type
\pagestyle{empty} % Suppress page numbers
\usepackage{graphicx}
\usepackage{wrapfig}
\graphicspath{ {images/} }
 \renewcommand{\familydefault}{\sfdefault}

% ============================
%   Create new commands
% ============================
\newcommand{\namePadding}{\smallskip}
\newcommand{\infoPadding}{\smallskip}
\newcommand{\sectionTitlePadding}{}
\newcommand{\sectionEndPadding}{\smallskip}
\newcommand{\headerLine}{\rule{\textwidth}{2pt}}
\newcommand{\breakLine}{\rule{\textwidth}{0.5pt}}
% https://tex.stackexchange.com/questions/135617/how-do-i-reduce-space-before-and-after-hrule
\newcommand{\HRule}[1][\medskipamount]{\par
    \vspace*{\dimexpr-\parskip-\baselineskip+#1}
    \noindent\rule{\linewidth}{0.2mm}\par
    \vspace*{\dimexpr-\parskip-.5\baselineskip+#1}}

% ============================
%   Create the Header
% ============================
% The container in which name and personal info live
\newcommand{\makeHeader}[5]{
    {\raggedright\Huge\bf #1}
    \hfill
    \begin{minipage}[b]{0.4\textwidth}
        \raggedleft\bf
        #4\\
        #2\\
        #3\\
    \end{minipage}
    \hspace{2mm}
    \includegraphics[width=3cm]{Bike Pic Cropped Again.jpg}
    \HRule[3mm]
}

% ============================
%   Standardize sections
% ============================
% Print the section title
\newcommand{\sectionTitle}[1]{
        {\MakeUppercase\bf\large #1} \\
        \HRule
}
% The container that the title and content live in
\newenvironment{newSection}[1]{
        % Inputs = title, content
        \raggedright
        \sectionTitle{#1}
    }{  
        \vspace{3mm}
}

% ============================
%   Custom section formats
% ============================
\newcommand{\education}[4]{
    % Inputs = degree, school name, location, time frame
    {\bf #1 \hfill #4}\\
    {#2, #3}
}

\newcommand{\experience}[3]{
    % Inputs = company, position, time frame, description items
    {\bf #2  -  #1  \hfill #3 \\}
}
