-- require("greek_letters.greek_letters")

-- telescope greek_letters

-- Author: James Owen
-- Description: Neovim plugin for inserting Greek letters in LaTeX
-- Dependencies:
-- 'nvim-telescope/telescope.nvim'

local M = {}

local greek_letters = {
        { " alpha", "\\alpha" },
        { " beta", "\\beta" },
        { "γ gamma", "\\gamma" },
        { "δ delta", "\\delta" },
        { "ϵ epsilon", "\\alpha" },
        { "ζ zêta", "\\zeta" },
        { "η êta", "\\eta" },
        { "𝜃 theta", "\\theta" },
        { "𝜄 iota", "\\iota" },
        { "κ kappa", "\\kappa" },
        { "λ lambda", "\\lambda" },
        { "𝜇 mu", "\\mu" },
        { "𝜈 nu", "\\nu" },
        { "𝜉 xi", "\\xi" },
        { "ο omikron", "\\eta" },
        { "𝜋 pi", "\\pi" },
        { "𝛒 rho", "\\rho" },
        -- { "κ sigma", "\\sigma" },
        -- { "λ tau", "\\tau" },
        -- { "𝜇 upsilon", "\\upsilon" },
        -- { "𝜈 phi", "\\phi" },
        -- { "𝜉 chi", "\\chi" },
        -- { "ο psi", "\\psi" },
        -- { "𝜋 omega", "\\omega" },
}


return { greek_letters = greek_letters }
