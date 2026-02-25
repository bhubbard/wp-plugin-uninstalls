-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quentn_member_plugin_notice_dismiss', 'quentn_cookie_notice_dismiss', 'quentn_add_remove_wp_user_from_host', 'quentn_tags_wp_user', 'quentn_auto_login_url', 'quentn_add_log', 'quentn_log_expire_days', 'quentn_db_version', 'quentn_app_key', 'quentn_base_url', 'quentn_client_id', 'quentn_client_secret', 'quentn_elementor_api_data_auto_update_flag', 'quentn_web_tracking_enabled', 'quentn_web_tracking_code', 'active_sitewide_plugins', 'quentn_unique_id', 'quentn_learndash_courses_settings_for_user_roles', 'default_post_edit_rows', 'quentn_web_tracking_consent_method');
DELETE FROM wp_options WHERE option_name LIKE 'elementor_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quentn_last_login', '_quentn_post_restrict_meta', 'quentn_reset_pwd_vu');
DELETE FROM wp_usermeta WHERE meta_key IN ('quentn_last_login', '_quentn_post_restrict_meta', 'quentn_reset_pwd_vu');
DELETE FROM wp_termmeta WHERE meta_key IN ('quentn_last_login', '_quentn_post_restrict_meta', 'quentn_reset_pwd_vu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quentn_last_login', '_quentn_post_restrict_meta', 'quentn_reset_pwd_vu');

