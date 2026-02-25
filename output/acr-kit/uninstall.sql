-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acr_kit_version', 'acr_kit_unsubscribe_page_id', 'acr_kit_connected_by', 'acr_kit_api_token', 'acr_kit_app_token', 'acr_kit_connection_token');

