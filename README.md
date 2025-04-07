# Writing a paper is a hard task. 

Get the algorithm section and experiments sections completed atleast 15 days before the actual paper submission time. 

## Paper Repo Structure

This is a general guideline, you may use a different structure but why?

- `paper.tex`. You main paper tex file for the paper.
- `xxxx.sty` or `xxxx.cls` file that describes the style of the paper.
- `refs.bib` for all citations.
- `sections` folder for all the parts of the paper. Add them to the main paper with `\input{}`. A paper usually has these sections. 
    -   `introduction.tex` -- Why is this paper interesting? What problem does it solve? Why solving this problem is interesting? 
    -   `overview.tex` -- Explain with a nice example how your approach works. How does it solve the problem stated in the paper? Novelty of the work. Compare with existing drawbacks. 
    -   `algorithm.tex` -- Formally explain the algorithm, typeset it in the paper with `algorithm` package. Explain line by line how it works.
    -   `implementation.tex` -- Engineering overview, implementation details, optimizations that you might have performed. Architecture diagram. Modularity, component cohesion, dependency injection etc.
    -   `experiments.tex` -- This is important for acceptance, write your RQs, Compare with SOTA tools, etc.
    -   `related.tex` -- Elaborate comparision with existing works and research. Break it up into subsections, say why their approach fails, or are not able to address the problem, how is your work better. Learn from them past, but be bold saying that these works do not solve the problem. 
    -   `conclusion.tex` -- Final Conclusion.
    -   `appendix.tex` -- All extra information needed to understand the paper but you cannot put in the paper for page restrictions. Must write properly because people do read it for more insights about your paper.

## Paper Guidelines

- Maintain a single folder (root), GitHub repository for the paper. Avoid Overleaf.
- Pull changes before making a change, push you changes frequently. Avoid `git conflicts` and never do `git rebase`. Merge with `ort` strategy. 
- Grammar Checks. Spelling Checks.
- No hard-coded references, all `\ref{}` better, `\Cref{}`
- Figures, code etc caption below, tables caption top.
- Stress with `\textit{}` but do not stress everything, use sparingly.
- Learn using `\boxed{}`, `\fbox{}` and `\parbox{}`.
- Do not keep citations for the last moment.
- Do not change the emblem if the conference/journal explicitly mentions it.
- Do not paste first two paragraphs of Introduction in the abstract section of the submission site.
- Check for `??` and `???` in the paper.
- Check if your references are referred and cited at the right place correctly. 
- Keep code and figures close the place where you explain or refer it.
- Do not caption subfigure of subfigure.
- No double captioning.
- Check your minted code for syntax errors, semantic errors.
  - Use `escapeinside` for labels and latex
- Break up your long texts or paragraphs into subsections or subsubsections if required.
- Highlight important points with `\itemize` or `\descriptions`. Long paragraphs and lines must be avoided.  

## Citations

- author_name:year_of_publish. Eg: kalita:2022, prantik:2020.
- Remove abstract, keywords.

## Labels

- Tables: `\label{tab:xxxxxx}`
- Sections: `\label{sec:xxxxxx}`
- Figures: `\label{fig:xxxxxx}`
- Code: `\label{code:xxxxxx}`
- Listings: `\label{list:xxxxxx}`
- Lines: `\label{code:line:xxxxxx}` or `\label{algo:line:xxxxxx}` as the case may be. 
- Algorithms: `\label{algo:xxxxxx}` 
