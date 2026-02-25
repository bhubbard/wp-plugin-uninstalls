-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oxi_flipbox_support_massage', 'oxi_addons_pre_loader', 'oxi_addons_user_permission', 'oxi_addons_font_awesome', 'oxi_addons_google_font', 'oxilab_flip_box_recommended', 'oxilab_flip_box_activation_date', 'oxilab_flip_box_nobug', 'oxi_addons_font_awesome_version', 'oxilab_flip_box_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'oxi_flip_box_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

