-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nicen_make_plugin_save_result', 'nicen_last_auto_publish', 'nicen_last_batch', 'nicen_make_publish_date_start', 'nicen_make_publish_date_end', 'nicen_make_publish_time_start', 'nicen_make_publish_time_end', 'nicen_make_plugin_interval', 'nicen_make_plugin_order', 'nicen_make_plugin_publish_local', 'nicen_make_publish_date', 'nicen_make_plugin_publish_num', 'nicen_make_publish_type', 'nicen_make_plugin_auto_publish', 'nicen_make_publish_white', 'nicen_make_plugin_record_log', 'nicen_make_plugin_adjust', 'nicen_make_plugin_private', 'nicen_plugin_error_log');

