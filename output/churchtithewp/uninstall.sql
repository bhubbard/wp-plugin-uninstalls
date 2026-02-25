-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('church_tithe_wp_wizard_status', 'church_tithe_wp_settings', 'ctwp_scsr', 'sendgrid_api_key', 'ctwp_threshold_reset', 'church_tithe_wp_just_activated', 'church_tithe_wp_stripe_country_code', 'church_tithe_wp_stripe_available_currencies', 'church_tithe_wp_stripe_product_id', 'church_tithe_wp_mail_health_check_token', 'church_tithe_wp_mail_health_check_success_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'church_tithe_wp_login_code_%';
DELETE FROM wp_options WHERE option_name LIKE 'church_tithe_wp_login_code_requests_%';
DELETE FROM wp_options WHERE option_name LIKE '%_mode';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('church_tithe_wp_name', 'church_tithe_wp_login_attempts');
DELETE FROM wp_usermeta WHERE meta_key IN ('church_tithe_wp_name', 'church_tithe_wp_login_attempts');
DELETE FROM wp_termmeta WHERE meta_key IN ('church_tithe_wp_name', 'church_tithe_wp_login_attempts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('church_tithe_wp_name', 'church_tithe_wp_login_attempts');

