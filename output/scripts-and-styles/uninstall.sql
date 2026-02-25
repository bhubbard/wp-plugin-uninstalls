-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ScriptsAndStylesBySL_scripts_head_option', 'ScriptsAndStylesBySL_scripts_footer_option', 'ScriptsAndStylesBySL_styles_option');

