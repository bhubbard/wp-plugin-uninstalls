-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dws_options_feed_box', 'dws_options_notes_user', 'dws_options_social_box', 'dws_options_general', 'dws_options_list_box', 'dws_options_log_debug', 'dws_options_log_error', 'dws_options_system_info', 'dws_options_widget_box', 'dws_notes_user_data', 'dashboard-widgets-suite-dismiss-notice');

