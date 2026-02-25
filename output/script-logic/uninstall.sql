-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb_registered_scripts', 'sb_registered_styles', 'sb_scriptlogic');

