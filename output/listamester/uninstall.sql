-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('listamester_lmid', 'listamester_lmpwd', 'lm_user_id', 'lm_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'listamester_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'listamester_html_%';
DELETE FROM wp_options WHERE option_name LIKE 'listamester_js_%';

