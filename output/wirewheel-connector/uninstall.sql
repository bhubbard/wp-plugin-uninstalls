-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wwc_form_config', 'wwc_form_list');
DELETE FROM wp_options WHERE option_name LIKE 'wwc_form_%';

