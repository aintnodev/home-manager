{
  language = [
    {
      name = "c";
      file-types = [
        "c"
        "h"
      ];
      formatter = {
        command = "clang-format";
      };
    }

    {
      name = "cpp";
      file-types = [
        "cpp"
        "cc"
        "cxx"
        "hpp"
        "hcc"
        "hxx"
      ];
      formatter = {
        command = "clang-format";
      };
    }

    {
      name = "html";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "html"
        ];
      };
      language-servers = [
        "vscode-html-language-server"
        "emmet-lsp"
      ];
    }

    {
      name = "css";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "css"
        ];
      };
      language-servers = [
        "vscode-css-language-server"
        "emmet-lsp"
      ];
    }

    {
      name = "scss";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "scss"
        ];
      };
      language-servers = [
        "vscode-css-language-server"
        "emmet-lsp"
      ];
    }

    {
      name = "javascript";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "typescript"
        ];
      };
    }

    {
      name = "typescript";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "typescript"
        ];
      };
    }

    {
      name = "tsx";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "typescript"
        ];
      };
      language-servers = [
        "typescript-language-server"
        "emmet-lsp"
      ];
    }

    {
      name = "json";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "json"
        ];
      };
    }

    {
      name = "jsonc";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "jsonc"
        ];
      };
    }

    {
      name = "markdown";
      language-servers = [
        "marksman"
        "ltex-ls-plus"
        # "harper-ls"
      ];
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "markdown"
        ];
      };
    }

    {
      name = "python";
      language-servers = [
        "ruff"
        "pyright"
      ];
    }

    {
      name = "java";
      indent = {
        tab-width = 4;
        unit = "    ";
      };
      formatter = {
        command = "google-java-format";
        args = [ "-" ];
      };
      auto-format = true;
    }

    {
      name = "svelte";
      formatter = {
        command = "prettier";
        args = [
          "--plugin"
          "prettier-plugin-svelte"
          "--parser"
          "svelte"
        ];
      };
    }

    {
      name = "rust";
      formatter = {
        command = "bash";
        args = [
          "-c"
          "rustfmt"
        ];
      };
    }

    {
      name = "toml";
      formatter = {
        command = "taplo";
        args = [
          "format"
          "-"
        ];
      };
    }

    {
      name = "yaml";
      formatter = {
        command = "prettier";
        args = [
          "--parser"
          "yaml"
        ];
      };
    }
  ];

  language-server = {
    harper-ls = {
      command = "harper-ls";
      args = [ "--stdio" ];
    };

    emmet-lsp = {
      command = "emmet-language-server";
      args = [ "--stdio" ];
    };

    ruff = {
      command = "ruff";
      args = [ "server" ];
    };
  };
}
