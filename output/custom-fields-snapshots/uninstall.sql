-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_fields_snapshots_event_logging', 'custom_fields_snapshots_delete_plugin_data');

