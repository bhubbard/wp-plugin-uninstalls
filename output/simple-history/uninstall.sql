-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_history_detective_mode_enabled', 'simple_history_experimental_features_enabled', 'simple_history_enable_rss_feed', 'simple_history_rss_secret', 'simple_history_email_report_enabled', 'simple_history_pager_size', 'simple_history_pager_size_dashboard', 'simple_history_show_on_dashboard', 'simple_history_show_as_page', 'simple_history_show_in_admin_bar', 'simple_history_total_logged_events_count', 'simple_history_install_date_gmt', 'simple_history_email_report_recipients', 'simple_history_db_version', 'simple_history_menu_page_location', 'limit_login_retries', 'auto_update_plugins', 'settings_errors', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_info_before_update';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

