-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_email_capture_theme_affiliate_link', 'wp_email_capture_name_required', 'wp_email_capture_recaptcha_client_api_key', 'wp_email_capture_recaptcha_server_api_key', 'wp_email_capture_link', 'wp_email_capture_default_styling', 'wp_email_capture_name_delimeter', 'wp_email_capture_signup', 'wp_email_capture_redirection', 'wp_email_capture_send_email_html', 'dismissed-wp_email_capture_mysql_deprecated', 'wp_email_capture_enable_gdpr', 'wp_email_capture_unit_for_privacy', 'wp_email_capture_number_for_privacy', 'wp_email_capture_db_version', 'wp_email_capture_from', 'wp_email_capture_from_name', 'wp_email_capture_subject', 'wp_email_capture_body', 'wp_email_capture_disabled_headers', 'wp_email_capture_recaptcha_api_type', 'WPEC_Tracking_Hash');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_email_capture_setup_ignore', 'wp_email_capture_upsell_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_email_capture_setup_ignore', 'wp_email_capture_upsell_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_email_capture_setup_ignore', 'wp_email_capture_upsell_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_email_capture_setup_ignore', 'wp_email_capture_upsell_ignore');

