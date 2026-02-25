-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frm_connect_token', 'frm_install_running', 'frmpro-credentials', 'frmpro-authorized', 'frm_db_version', 'frm_feedback_expired', 'frm_lite_settings_upgrade', 'frm_last_style_update', 'frm_first_activation', 'frm_dismissed', 'frm_last_cleared', 'frm_antispam_secret_key', 'ftp_credentials', 'wordpress_api_key', 'frm_form_state_key', 'frm_honeypot_class', 'frm_inbox', 'wp_mail_smtp_activation_prevent_redirect', 'frm_options', 'frm-usage-uuid', 'frmpro_css', 'widget_frm_show_form', 'frm_sale_ab_group', 'frm_admin_menu_name', 'recaptcha', 'disallowed_keys', 'frm_square_lite_last_verify_attempt', 'frm_stripe_lite_last_verify_attempt', 'frm_updating_api', 'frmpro_css', 'frm_api_licence', 'update_plugins', 'frm_options', 'frmpro_options', 'formidable_plugin_data', 'frm_recent_spam_detected');
DELETE FROM wp_options WHERE option_name LIKE '%key';
DELETE FROM wp_options WHERE option_name LIKE '%active';
DELETE FROM wp_options WHERE option_name LIKE '%last_activate';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%excludeinclude';
DELETE FROM wp_options WHERE option_name LIKE '%includeinclude';
DELETE FROM wp_options WHERE option_name LIKE '%includeexclude';
DELETE FROM wp_options WHERE option_name LIKE '%excludeexclude';
DELETE FROM wp_options WHERE option_name LIKE 'frm_square_last_process_%';
DELETE FROM wp_options WHERE option_name LIKE 'frm_last_process_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');

