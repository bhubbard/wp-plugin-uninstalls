-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blm_options', 'blm_options_wpml_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'blm_options_wpml_%';

