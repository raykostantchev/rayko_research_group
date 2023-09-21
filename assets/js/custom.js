// add custom js in this file


import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10.4.0/dist/mermaid.min.js';

mermaidAPI.initialize({
    securityLevel: 'loose'
});


MathJax.Hub.Config({ TeX: { equationNumbers: { autoNumber: "all" } } });
MathJax.Hub.Config({
	tex2jax: { inlineMath: [ ['$','$'], ["\\(","\\)"] ],processEscapes: true 	} 
	});
       <script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
