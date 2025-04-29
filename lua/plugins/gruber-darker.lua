return {
  {
    "blazkowolf/gruber-darker.nvim",
    lazy = false,    -- Carga el tema al inicio (opcional pero recomendado)
    priority = 1000, -- Alta prioridad para que se cargue antes que otros plugins
    opts = {         -- Configuración personalizada (opcional)
      bold = true,   -- Habilita negritas (true/false)
      italic = {
        comments = true, -- Cursiva en comentarios
        strings = false, -- Sin cursiva en strings
      },
    },
    config = function(_, opts)
      require("gruber-darker").setup(opts)  -- Aplica la configuración
      vim.cmd.colorscheme("gruber-darker")  -- Establece el tema
    end,
  }
}
