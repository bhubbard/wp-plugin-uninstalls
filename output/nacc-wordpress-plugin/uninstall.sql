-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nacc_theme', 'nacc_language', 'nacc_layout', 'nacc_special');

