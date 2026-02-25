-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acsagma_google_maps_api_key', 'acsagma_agenda_manager_plugin_version', 'acsagma_page', 'acsagma_delete_data_on_uninstall', 'acsagma_agenda_events_cache');

