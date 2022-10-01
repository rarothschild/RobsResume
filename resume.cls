%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Latex Resume Template
% Robert Rothschild
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2022/09/30 v1 Resume class]
\LoadClass[11pt]{article} % Font size and paper type
\pagestyle{empty} % Suppress page numbers

% ============================
%   Create new commands
% ============================
% 
\newcommand{\namePadding}{\smallskip}
\newcommand{\infoPadding}{\smallskip}
\newcommand{\sectionTitlePadding}{\smallskip}
\newcommand{\sectionEndPadding}{\smallskip}
\newcommand{\headerLine}{\rule{\textwidth}{1pt}}
\newcommand{\breakLine}{\rule{\textwidth}{0.5pt}}
% These commands make a new command take a variable number of inputs
% https://davidyat.es/2016/07/27/writing-a-latex-macro-that-takes-a-variable-number-of-arguments/
\newcommand{\checknextarg}{\@ifnextchar\bgroup{\gobblenextarg}}
\newcommand{\gobblenextarg}[1]{#1\@ifnextchar\bgroup{\gobblenextarg}}

% ============================
%   Create the Header
% ============================
% Print name
\newcommand{\printName}[1]{
    {\Huge{\bf #1}}
    \namePadding
}
% Print personal info
\newcommand{\printInfo}[3]{
    { #1 \\ #2 \\ #3}
}
% The container in which name and personal info live
\newcommand{\makeHeader}[4]{
    \begin{flushleft}
        \printName{#1} \\
        \printInfo{#2}{#3}{#4}
    \end{flushleft}
    \headerLine
}

% ============================
%   Standardize sections
% ============================
% Print the section title
\newcommand{\sectionTitle}[1]{
    {
        \MakeUppercase \bf #1
        \sectionTitlePadding
        \breakLine
    }
}
% The container that the title and content live in
\newenvironment{newSection}[1]{
        % Inputs = title, content
        \begin{flushleft}
        \sectionTitle{#1}
    }{  
        \end{flushleft}
        \sectionEndPadding
}

% ============================
%   Custom section formats
% ============================
\newcommand{\education}[4]{
    % Inputs = degree, school name, location, time frame
    {\bf #1, #2, #3, #4}
}
\newcommand{\experience}[4]{
    % Inputs = company, position, time frame, description
    {\bf #1, #2 \hfill #3 \\}
    {#4 \\}
}