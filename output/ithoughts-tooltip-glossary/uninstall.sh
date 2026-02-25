#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iThoughtsTooltipGlossary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithoughts_tt_gl_term_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithoughts_tt_gl_term_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithoughts_tt_gl_term_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithoughts_tt_gl_term_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithoughts_tt_gl_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithoughts_tt_gl_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithoughts_tt_gl_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithoughts_tt_gl_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithoughts_tt_gl_update_term_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithoughts_tt_gl_update_term_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithoughts_tt_gl_update_term_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithoughts_tt_gl_update_term_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithoughts_tt_gl_has_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithoughts_tt_gl_has_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithoughts_tt_gl_has_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithoughts_tt_gl_has_terms'"
