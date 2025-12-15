;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — llm-unify-core

(ecosystem
  (version "1.0.0")
  (name "llm-unify-core")
  (type "project")
  (purpose "Core types for managing LLM conversations across multiple providers (ChatGPT, Claude, Gemini, Copilot).")

  (position-in-ecosystem
    "Part of hyperpolymath ecosystem. Follows RSR guidelines.")

  (related-projects
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "Core types for managing LLM conversations across multiple providers (ChatGPT, Claude, Gemini, Copilot).")
  (what-this-is-not "- NOT exempt from RSR compliance"))
