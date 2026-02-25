-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pardot_crypto_key', 'pardot_settings', 'pardot_forms', 'pardot_dynamicContent', 'pardot_tracking_code_template');
DELETE FROM wp_options WHERE option_name LIKE 'pardot_form_html_%';
DELETE FROM wp_options WHERE option_name LIKE 'pardot_dynamicContent_html_%';

