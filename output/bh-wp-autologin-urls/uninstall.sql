-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_checkout_login_reminder', 'bh_wp_autologin_urls_seconds_until_expiry', 'bh_wp_autologin_urls_klaviyo_private_key', 'bh_wp_autologin_urls_is_admin_enabled', 'bh_wp_autologin_urls_subject_filter_regex_dictionary');
DELETE FROM wp_options WHERE option_name LIKE '%-recent-error-data';
DELETE FROM wp_options WHERE option_name LIKE '%_log_level';

