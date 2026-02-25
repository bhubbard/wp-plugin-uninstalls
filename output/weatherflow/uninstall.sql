-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'weatherflow_api_key', 'weatherflow_latitude', 'weatherflow_longitude', 'weatherflow_location_name', 'weatherflow_hour_limit', 'weatherflow_background_colour', 'weatherflow_background_text_colour', 'weatherflow_card_colour', 'weatherflow_card_text_colour', 'weatherflow_display_options', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

