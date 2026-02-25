-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vifewc_sections_params', 'vifewc_settings_params', 'woocommerce_enable_signup_and_login_from_checkout', 'villatheme_hide_admin_toolbar', 'vifewc_get_section_fields', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

