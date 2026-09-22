-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- === Привычные Ctrl+C / Ctrl+X / Ctrl+V (системный буфер) ===
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', { desc = "Копировать в системный буфер" })
vim.keymap.set({ "n", "v" }, "<C-x>", '"+d', { desc = "Вырезать в системный буфер" })
vim.keymap.set({ "n", "v" }, "<C-v>", '"+p', { desc = "Вставить из системного буфера" })

-- === Отмена / Повтор ===
vim.keymap.set({ "n", "v" }, "<C-z>", "u", { desc = "Отменить" })
vim.keymap.set({ "n", "v" }, "<C-y>", "<C-r>", { desc = "Повторить" })

-- === Выделение всего (Ctrl+A) ===
vim.keymap.set({ "n", "v", "i" }, "<C-a>", "<Esc>ggVG", { desc = "Выделить всё" })

-- === Выделение текста с зажатым Shift из обычного режима ===
vim.keymap.set("n", "<S-Left>", "v<Left>", { desc = "Выделить влево" })
vim.keymap.set("n", "<S-Right>", "v<Right>", { desc = "Выделить вправо" })
vim.keymap.set("n", "<S-Up>", "v<Up>", { desc = "Выделить вверх" })
vim.keymap.set("n", "<S-Down>", "v<Down>", { desc = "Выделить вниз" })
vim.keymap.set("n", "<S-Home>", "v<Home>", { desc = "Выделить до начала строки" })
vim.keymap.set("n", "<S-End>", "v<End>", { desc = "Выделить до конца строки" })

-- === Перемещение курсора в режиме вставки стрелками ===
vim.keymap.set("i", "<Left>", "<Left>")
vim.keymap.set("i", "<Right>", "<Right>")
vim.keymap.set("i", "<Up>", "<Up>")
vim.keymap.set("i", "<Down>", "<Down>")

-- === Привычные Ctrl+C / Ctrl+X / Ctrl+V / Ctrl+Z в режиме вставки ===

-- Вставка из системного буфера (эмулирует Ctrl+V)
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Вставить из системного буфера" })

-- Отмена и повтор (эмулирует Ctrl+Z и Ctrl+Y)
vim.keymap.set("i", "<C-z>", "<C-o>u", { desc = "Отменить" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { desc = "Повторить" })

-- === Выход через Ctrl+Q ===
-- Закрыть текущее окно (если открыто несколько)
vim.keymap.set("n", "<C-q>", "<cmd>q<cr>", { desc = "Закрыть окно" })
