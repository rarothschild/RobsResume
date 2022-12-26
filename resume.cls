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
\usepackage{mathptmx}
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
\newcommand{\makeHeader}[7]{
        \begin{center}
            {\fontsize{40}{40}\bf\raggedright #1} \\
            \vspace{0.1cm}
            #2   -    #3   -    #4 \\
            #5   -    #6   -    #7
        \end{center}
}

% ============================
%   Standardize sections
% ============================
% Print the section title
\newcommand{\sectionTitle}[1]{
        {\MakeUppercase\large\bf #1} \\
        \HRule
}
% The container that the title and content live in
\newenvironment{newSection}[1]{
        % Inputs = title, content
        \raggedright
        \sectionTitle{#1}
        \vspace{1mm}
    }{  
        
}

% ============================
%   Custom section formats
% ============================
\newcommand{\education}[4]{
    % Inputs = degree, school name, location, time frame
    {\bf #1 \hfill #4}\\
    {#2, #3}
}

\newcommand{\experience}[2]{
    % Inputs = company, position, time frame, description items
    {\bf #1  \hfill #2 \\}
}
