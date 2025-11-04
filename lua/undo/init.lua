-- Crear un directorio para los archivos de undo si no existe
vim.o.undodir = vim.fn.stdpath('config') .. '/undo'
vim.o.undofile = true  -- Habilitar la persistencia de deshacer

-- Opciones adicionales
vim.o.undolevels = 1000  -- Número de niveles de deshacer
vim.o.undoreload = 10000 -- Cuántos cambios almacenar cuando cargas un archivo
