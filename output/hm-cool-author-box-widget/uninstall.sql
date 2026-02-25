-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cab_post_layout', 'cab_personal_info_settings', 'cab_social_settings', 'cab_styles_post_settings', 'cab_template_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cab_title', 'hmcabw_photograph', 'cab_user_socials');
DELETE FROM wp_usermeta WHERE meta_key IN ('cab_title', 'hmcabw_photograph', 'cab_user_socials');
DELETE FROM wp_termmeta WHERE meta_key IN ('cab_title', 'hmcabw_photograph', 'cab_user_socials');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cab_title', 'hmcabw_photograph', 'cab_user_socials');

