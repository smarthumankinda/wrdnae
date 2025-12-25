{ inputs, ... }: {
  perSystem = { pkgs, ... }: let
    base = import ./_base.nix;  
  in {
    packages.hx-cpp = (inputs.wrappers.wrapperModules.helix.apply {
      inherit pkgs;

      settings = base;

      languages = {
        language = [
          {
            name = "cpp";
            auto-format = true;
            indent = { tab-width = 4; unit = "    "; };
            language-servers = [ "scls" "clangd" ];
          }
        ];

        language-server = {
          scls = {
            command = "simple-completion-language-server";

            config = {
              max_completion_items = 100;
              feature_words = true;
              feature_snippets = true;
              snippets_first = true;
              snippets_inline_by_word_trail = false;
              feature_unicode_input = false;
              feature_paths = true;
              featue_citations = false;
            };

            enviornment = {
              LOG_FILE = "/tmp/completion.log";
              NIX_LOG = "info,simple-completion-language-server=info";
            };
          };

          clangd = {
            command = "clangd";
            args = [
              "--query-driver=/nix/store/*/bin/g++"
              "--background-index"
              "--clang-tidy"
            ];
          };
        };
      };

      extraPackages = with pkgs; [
        simple-completion-language-server
        clang-tools
      ];

      themes = { };
      ignores = [ ];
    }).wrapper;
  };
}
