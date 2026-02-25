-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('envision_blocks_integrations_settings', 'envision_blocks_settings_settings', '_envision_blocks_elementor_defaults', 'envision-blocks-widget-dark-mode', 'envision-blocks-widget-offcanvas', 'envision-blocks-menu-icon', 'envision-blocks-widget-nav-menu', 'envision-blocks-widget-menu-icon', 'elementor_cpt_support', '_elementor_editor_upgrade_notice_dismissed', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_unfiltered_files_upload', 'yith_wcwl_show_on_loop', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'envision-blocks-widget-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode');

