-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iThoughtsTooltipGlossary');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ithoughts_tt_gl_term_used', 'ithoughts_tt_gl_reference', 'ithoughts_tt_gl_update_term_usage', 'ithoughts_tt_gl_has_terms');
DELETE FROM wp_usermeta WHERE meta_key IN ('ithoughts_tt_gl_term_used', 'ithoughts_tt_gl_reference', 'ithoughts_tt_gl_update_term_usage', 'ithoughts_tt_gl_has_terms');
DELETE FROM wp_termmeta WHERE meta_key IN ('ithoughts_tt_gl_term_used', 'ithoughts_tt_gl_reference', 'ithoughts_tt_gl_update_term_usage', 'ithoughts_tt_gl_has_terms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ithoughts_tt_gl_term_used', 'ithoughts_tt_gl_reference', 'ithoughts_tt_gl_update_term_usage', 'ithoughts_tt_gl_has_terms');

