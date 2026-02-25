-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tip_jar_wp_wizard_status', 'tip_jar_wp_settings', 'tjwp_scsr', 'sendgrid_api_key', 'tip_jar_wp_just_activated', 'tip_jar_wp_stripe_country_code', 'tip_jar_wp_stripe_available_currencies', 'tip_jar_wp_stripe_product_id', 'tip_jar_wp_mail_health_check_token', 'tip_jar_wp_mail_health_check_success_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'tip_jar_wp_login_code_%';
DELETE FROM wp_options WHERE option_name LIKE 'tip_jar_wp_login_code_requests_%';
DELETE FROM wp_options WHERE option_name LIKE 'tjwp_file_download_%';
DELETE FROM wp_options WHERE option_name LIKE '%_mode';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tip_jar_wp_login_attempts');
DELETE FROM wp_usermeta WHERE meta_key IN ('tip_jar_wp_login_attempts');
DELETE FROM wp_termmeta WHERE meta_key IN ('tip_jar_wp_login_attempts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tip_jar_wp_login_attempts');

