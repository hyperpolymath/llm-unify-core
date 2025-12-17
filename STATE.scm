;;; STATE.scm - Project Checkpoint
;;; llm-unify-core
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-15")
    (updated . "2025-12-17")
    (project . "llm-unify-core")
    (repo . "github.com/hyperpolymath/llm-unify-core")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "llm-unify-core")
    (tagline . "Core types for managing LLM conversations across multiple providers (ChatGPT, Claude, Gemini, Copilot).")
    (version . "0.1.0")
    (license . "AGPL-3.0-or-later")
    (rsr-compliance . "gold-target")

    (tech-stack
     ((primary . "See repository languages")
      (ci-cd . "GitHub Actions + GitLab CI + Bitbucket Pipelines")
      (security . "CodeQL + OSSF Scorecard")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.1 - Initial Setup and RSR Compliance")
    (overall-completion . 25)

    (components
     ((rsr-compliance
       ((status . "complete")
        (completion . 100)
        (notes . "SHA-pinned actions, SPDX headers, multi-platform CI")))

      (documentation
       ((status . "foundation")
        (completion . 30)
        (notes . "README exists, META/ECOSYSTEM/STATE.scm added")))

      (testing
       ((status . "minimal")
        (completion . 10)
        (notes . "CI/CD scaffolding exists, limited test coverage")))

      (core-functionality
       ((status . "in-progress")
        (completion . 25)
        (notes . "Initial implementation underway")))))

    (working-features
     ("RSR-compliant CI/CD pipeline"
      "Multi-platform mirroring (GitHub, GitLab, Bitbucket)"
      "SPDX license headers on all files"
      "SHA-pinned GitHub Actions"))))

;;;============================================================================
;;; ROUTE TO MVP
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "Stable release with comprehensive documentation and tests")

    (milestones
     ((v0.1.1
       ((name . "Security Hardening")
        (status . "in-progress")
        (items
         ("Remove duplicate CI workflows"
          "Add SPDX headers to all config files"
          "Remove unused package ecosystems from dependabot"
          "Verify SHA-pinned GitHub Actions"))))

      (v0.2
       ((name . "Core Functionality")
        (status . "pending")
        (items
         ("Add unit tests for Conversation, Message, Metadata types"
          "Add integration tests for Provider trait"
          "Implement ChatGPT export parser"
          "Implement Claude export parser"
          "Add property-based tests with proptest"
          "Reach 70% test coverage minimum"))))

      (v0.3
       ((name . "Provider Implementations")
        (status . "pending")
        (items
         ("Implement Gemini export parser"
          "Implement Copilot export parser"
          "Add validation logic for each provider"
          "Create unified export/import format"))))

      (v0.5
       ((name . "Feature Complete")
        (status . "pending")
        (items
         ("All provider parsers implemented"
          "Test coverage > 80%"
          "API stability and documentation"
          "Add async support (optional feature)"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (items
         ("Security audit completion"
          "Performance benchmarks"
          "Complete API documentation"
          "Publish to crates.io"
          "User guide and examples"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ())  ;; No critical blockers

    (high-priority
     ())  ;; No high-priority blockers

    (medium-priority
     ((test-coverage
       ((description . "Limited test infrastructure")
        (impact . "Risk of regressions")
        (needed . "Comprehensive test suites")))))

    (low-priority
     ((documentation-gaps
       ((description . "Some documentation areas incomplete")
        (impact . "Harder for new contributors")
        (needed . "Expand documentation")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("Complete v0.1.1 security hardening" . high)
      ("Add unit tests for core types" . high)
      ("Verify CI passes on all platforms" . medium)))

    (this-week
     (("Implement ChatGPT export parser" . high)
      ("Implement Claude export parser" . high)
      ("Add property-based tests" . medium)))

    (this-month
     (("Reach v0.2 milestone" . high)
      ("Achieve 70% test coverage" . high)
      ("Begin v0.3 provider implementations" . medium)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-15")
      (session . "initial-state-creation")
      (accomplishments
       ("Added META.scm, ECOSYSTEM.scm, STATE.scm"
        "Established RSR compliance"
        "Created initial project checkpoint"))
      (notes . "First STATE.scm checkpoint created via automated script"))

     ((date . "2025-12-17")
      (session . "security-review")
      (accomplishments
       ("Removed duplicate rust.yml workflow (kept rust-ci.yml)"
        "Added SPDX header to dependabot.yml"
        "Removed unused npm/pip ecosystems from dependabot"
        "Verified all GitHub Actions SHA-pinned"
        "Verified cargo audit and security scanning in CI"
        "Confirmed clippy lints pass with -D warnings"))
      (notes . "Security review session - all workflows RSR compliant")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "llm-unify-core")
    (version . "0.1.0")
    (overall-completion . 30)
    (next-milestone . "v0.1.1 - Security Hardening (in-progress)")
    (critical-blockers . 0)
    (high-priority-issues . 0)
    (updated . "2025-12-17")))

;;; End of STATE.scm
