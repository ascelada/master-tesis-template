# LaTeX Thesis Project

Este repositório contém o projeto em LaTeX para sua tese/trabalho acadêmico, organizado com vários arquivos de capítulo, classes e configurações customizadas.

## 1. Requisitos de Software

### 1.1 Editor

* **Visual Studio Code** (VSCode)

  * Instale o [VSCode](https://code.visualstudio.com/).
  * Adicione a extensão **LaTeX Workshop** (geralmente chamada de "LaTeX Workshop" no Marketplace).

### 1.2 Distribuição LaTeX

Escolha a distribuição adequada ao seu sistema operacional:

* **Windows:** use **MiKTeX**

  * Baixe e instale o MiKTeX em [https://miktex.org/](https://miktex.org/)
  * Durante a instalação, habilite o recurso de instalação automática de pacotes.

* **macOS:** use **MacTeX**

  * Baixe e instale o MacTeX em [https://tug.org/mactex/](https://tug.org/mactex/)

> **Observação:** o LaTeX Workshop do VSCode utilizará internamente o `latexmk` (ou `pdflatex`) fornecido pela distribuição.

## 2. Estrutura do Projeto

```text
├── 0_0_TESE.tex           # Arquivo principal
├── 0_1_dados_trabalho.tex # Capítulo de dados de trabalho
├── 0_2_pretext_promec.tex # Prefácio e preâmbulos
├── custom_commands.tex    # Comandos LaTeX customizados
├── settings.tex           # Configurações gerais do documento
├── tepromec.cls           # Classe customizada para o documento
├── bib_promec.bst         # Estilo de bibliografia
└── imagens/               # (opcional) pasta para figuras
```

## 3. Como Compilar

### 3.1 Via VSCode + LaTeX Workshop

1. Abra a pasta raiz do projeto no VSCode (`File → Open Folder…`).
2. Verifique se a extensão LaTeX Workshop está habilitada.
3. Abra o arquivo `0_0_TESE.tex`.
4. Pressione <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd> (ou use o comando **LaTeX Workshop: Build LaTeX project** na paleta de comandos) para iniciar a compilação.
5. O PDF resultante será mostrado no painel lateral do VSCode.

### 3.2 Manual (linha de comando)

No terminal, estando na raiz do projeto, execute:

```bash
latexmk -pdf 0_0_TESE.tex
```

* Para limpar arquivos auxiliares após a compilação:

```bash
latexmk -c
```

## 4. Personalização do Build

Caso queira ajustar as opções de compilação (por exemplo, rodar `biber` em vez de `bibtex`), edite as configurações do LaTeX Workshop em `.vscode/settings.json`:

```json
{
  "latex-workshop.latex.tools": [
    {
      "name": "latexmk",
      "command": "latexmk",
      "args": ["-pdf", "%DOC%"],
      "env": {}
    }
  ],
  "latex-workshop.latex.recipes": [
    {
      "name": "latexmk",
      "tools": ["latexmk"]
    }
  ]
}
```

## 5. Solução de Problemas

* **Erro de pacote faltando:** no MiKTeX, abra o "MiKTeX Console" e atualize a lista de pacotes.
* **Permissões em macOS:** ajuste as permissões de `/usr/local/texlive/…` caso erros de escrita ocorram.
* **Cache corrompido:** execute `latexmk -C` para limpar todos os auxiliares antes de nova compilação.

---

Este README deve ajudá-lo a configurar e compilar o projeto em qualquer plataforma principal. Para dúvidas adicionais, consulte a documentação da sua distribuição LaTeX ou da extensão LaTeX Workshop no VSCode.
