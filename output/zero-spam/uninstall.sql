-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zerospam_configured', 'zerospam_activation_time', 'zerospam_api_monitoring_notice_dismissed', 'zerospam_blocked_email_domains', 'disallowed_keys', 'zero-spam-settings', 'wpzerospam_honeypot', 'zerospam_api_notices', 'zerospam_db_version', 'zerospam_network_notifications_enabled', 'zerospam_network_settings_notifications_enabled', 'zero-spam-last-update', 'wpzerospam', 'zero-spam-zerospam', 'zero-spam-network-zerospam', 'zerospam_settings_audit', 'zero-spam-api-monitoring', 'zero-spam-debug', 'zero-spam-google', 'zero-spam-ipinfo', 'zero-spam-ipstack', 'zero-spam-project_honeypot', 'zero-spam-stop_forum_spam', 'zero_spam_last_api_request', 'zero-spam-comments', 'zero-spam-contactform7', 'zero-spam-davidwalsh', 'zerospam_davidwalsh', 'zero-spam-elementor', 'zero-spam-fluent_form', 'zero-spam-formidable', 'zero-spam-givewp', 'zero-spam-gravityforms', 'zero-spam-ipbase', 'zero-spam-login', 'zero-spam-mailchimp4wp', 'zero-spam-registration', 'zero-spam-security', 'zero-spam-woocommerce', 'zero-spam-wpforms', 'zero-spam-wp-user-avatar', 'zero_spam_last_api_report', 'zerospam_dashboard_data', 'zero_spam_circuit_open', 'zero_spam_failure_count');
DELETE FROM wp_options WHERE option_name LIKE 'zerospam_promo_shown_%';
DELETE FROM wp_options WHERE option_name LIKE 'zerospam_login_intent_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zerospam_promo_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('zerospam_promo_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('zerospam_promo_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zerospam_promo_dismissed');

