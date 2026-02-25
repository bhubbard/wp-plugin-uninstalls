-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DLCT_LOGconfig_notice_dismissed_20', 'dlct_db_query_log', 'dlct_debug_file_path_generated', 'dlct_debug_file_path', 'dlct_ddebug_file_path', 'dlct_log_file_copied', 'dlct_selected_active_plugins_list', 'safe_mode_status', 'before_safe_mode_active_plugins_list', 'update_plugins');

