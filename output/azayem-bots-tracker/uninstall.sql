-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bt_bots_retention_days', 'bt_bots_filter_enabled', 'bt_bots_filter_mode', 'bt_bots_filter_source', 'bt_bots_filter_selected_bots', 'bt_bots_filter_custom_names', 'bt_bots_tracker_db_version');

