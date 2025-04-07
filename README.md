# Paper Repo

- `paper.tex`. You main paper tex file for the paper.
- `xxxx.sty` or `xxxx.cls` file that describes the style of the paper.
- `refs.bib` for all citations.
- `sections` folder for all the parts of the paper. Add them to the main paper with `\input{}`. A paper usually has these sections. 
    -   `introduction.tex` -- Why is this paper interesting? What problem does it solve?
    -   `overview.tex` -- Explain with a nice example how youe approach works.
    -   `algorithm.tex` -- Formally explain the algorithm, typeset it in the paper with `algorithm` package. Explain line by line how it works.
    -   `implementation.tex` -- Engineering overview, implementation details, optimizations that you might have performed. Architecture diagram. Modularity, component cohesion, dependency injection etc.
    -   `experiments.tex` -- This is important for acceptance, write your RQs, Compare with SOTA tools, etc.
    -   `related.tex` -- Elaborate comparision with existing works and research. 
    -   `conclusion.tex` -- Final Conclusion.
    -   `appendix.tex` -- All extra information needed to understand the paper but you cannot put in the paper for page restrictions. Must write properly because people do read it for more insights about your paper.

# Paper Guidelines

- No hardcoded references, all `ref{}` better, `Cref{}`
- Figures, code etc caption below, tables caption top.
- Stress with `\textit{}` but donot stress everything, use sparingly.
- Learn using `\boxed{}`, `\fbox{}` and `\parbox{}`.
- Do not keep citations for the last moment.
- Do not change the emblem if the conference/journal explicitly mentions it.
- Do not paste first two paragraphs of Introduction in the abstract section of the submission site. 
