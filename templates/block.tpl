<div class="pkp_block">
    <h2 class="title">{translate key="plugins.blocks.doom.block.title"}</h2>
    <div class="content">
        <iframe id="doom-frame" style="width: 20vw; height: 20vw; border: none;" title="Doom"></iframe>
        
        <script>
            const iframe = document.getElementById('doom-frame');
            iframe.onload = function() {
                const doc = iframe.contentDocument;
                doc.body.innerHTML = '<div id="dos" style="width: 100%; height: 100%;"></div>';
                
                const link = doc.createElement('link');
                link.rel = 'stylesheet';
                link.href = 'https://v8.js-dos.com/latest/js-dos.css';
                doc.head.appendChild(link);
                
                const script = doc.createElement('script');
                script.src = 'https://v8.js-dos.com/latest/js-dos.js';
                script.onload = function() {
                    const scriptInit = doc.createElement('script');
                    scriptInit.textContent = `
                        Dos(document.getElementById("dos"), {
                            url: "https://cdn.dos.zone/custom/dos/doom.jsdos",
                        });
                    `;
                    doc.body.appendChild(scriptInit);
                };
                doc.head.appendChild(script);
            };
            
            iframe.src = 'about:blank';
        </script>
    </div>
</div>