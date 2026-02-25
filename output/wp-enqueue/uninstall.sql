-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpenq_scripts_path', 'wpenq_scripts_cond', 'wpenq_styles_path', 'wpenq_styles_cond');

