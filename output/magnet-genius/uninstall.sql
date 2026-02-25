-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lead_share_message', 'magnet_genius_api_key', 'magnet_genius_audience_key', 'magnet_genius_wemail_api_key', 'magnet_genius_whatsapp_api_key', 'magnet_genius_db_version', 'magnet_genius_plugin_version');

