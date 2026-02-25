-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('editoria11y_db_version', 'ed11y_plugin_settings', 'editoria11y_settings', 'ed11y_got_ids', 'editoria11y_settinges');

