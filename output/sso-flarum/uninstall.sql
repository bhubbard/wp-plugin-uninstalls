-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flarum_sso_plugin_version', 'flarum_sso_plugin_insecure', 'flarum_sso_plugin_verify_ssl', 'flarum_sso_plugin_flarum_url', 'flarum_sso_plugin_api_key', 'flarum_sso_plugin_verify_ssl_cert_path', 'flarum_sso_plugin_root_domain', 'flarum_sso_plugin_password_token', 'flarum_sso_plugin_memberpress_addon_set_groups_admins', 'flarum_sso_plugin_update_user_avatar', 'flarum_sso_plugin_active');
DELETE FROM wp_options WHERE option_name LIKE 'flarum_sso_plugin_%';

