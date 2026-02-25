-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moppm_email', 'moppm_customerKey', 'moppm_api_key', 'moppm_customer_token', 'moppm_verify_customer', 'company', 'moppm_admin_phone', 'moppm_registration_status', 'moppm_planname', 'moppm_pricing_page_visitor', 'moppm_activated_time', 'Moppm_enable_disable_ppm', 'moppm_dbversion', 'moppm_remove_offer_banner', 'moppm_plantype', 'moppm_enable_disable_report', 'no_of_of_attempt', 'moppm_letter', 'moppm_first_reset', 'moppm_Numeric_digit', 'moppm_enable_disable_expiry', 'moppm_special_char', 'moppm_digit', 'moppm_save_pass', 'email', 'customerKey', 'api_key', 'customer_token', 'verify_customer', 'registration_status', 'moppm_plugin_redirect', 'mo_ppm_message', 'mo_ppm_customer_selected_plan', 'moppm_expiration_time', 'moppm_disable_forget', 'moppm_prev_password_lim', 'moppm_superadmin_login_url', 'moppm_all_users_method');
DELETE FROM wp_options WHERE option_name LIKE 'moppm_%';
DELETE FROM wp_options WHERE option_name LIKE '%_login_url';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('moppm_points', 'moppm_pass_score', 'moppm_first_reset', 'moppm_last_pass_timestmp');
DELETE FROM wp_usermeta WHERE meta_key IN ('moppm_points', 'moppm_pass_score', 'moppm_first_reset', 'moppm_last_pass_timestmp');
DELETE FROM wp_termmeta WHERE meta_key IN ('moppm_points', 'moppm_pass_score', 'moppm_first_reset', 'moppm_last_pass_timestmp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('moppm_points', 'moppm_pass_score', 'moppm_first_reset', 'moppm_last_pass_timestmp');

