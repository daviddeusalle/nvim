return {
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{
        check_ts = true,  -- Activa Tree-sitter para que funcione correctamente
        enable_check_bracket_line = false,  -- Desactivar el chequeo de línea de paréntesis
        fast_wrap = {
          map = '<M-e>',  -- Atajo para envolver texto rápidamente (opcional)
        },
      }
    end
  },
}
