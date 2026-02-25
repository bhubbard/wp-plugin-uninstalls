-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplmi_plugin_dismiss_rating_notice', 'wplmi_plugin_dismiss_donate_notice', 'wplmi_plugin_no_thanks_rating_notice', 'wplmi_plugin_dismissed_time', 'wplmi_plugin_no_thanks_donate_notice', 'wplmi_plugin_dismissed_time_donate', 'wplmi_plugin_installed_time', 'wplmi_plugin_installed_time_donate', 'lmt_plugin_global_settings', 'wplmi_site_global_update_info', 'lmt_dashboard_widget_options', 'wplmi_plugin_api_data', 'wplmi-show-notice-on-activation', 'wplmi_import_db_done');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_date_updated', 'profile_last_modified', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_date_updated', 'profile_last_modified', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_date_updated', 'profile_last_modified', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_date_updated', 'profile_last_modified', '_edit_last');

