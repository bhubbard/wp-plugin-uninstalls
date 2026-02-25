-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_gtchatpro_code_snippet_show', '_gtchatpro_code_snippet_text');

