{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    package = pkgs.neovim;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
  home.file.".config/luacheck/.luacheckrc".text = ''
    stds.nvim = {
      read_globals = { 'jit' },
    }

    std = 'lua51+nvim'

    read_globals = {
      'vim',
    }

    globals = {
      'vim.g',
      'vim.b',
      'vim.w',
      'vim.o',
      'vim.bo',
      'vim.wo',
      'vim.go',
      'vim.env',
      'vim.opt',
    }
  '';
}
