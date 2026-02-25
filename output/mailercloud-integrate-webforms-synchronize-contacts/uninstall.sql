-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailercloud_api_key', 'mailercloud_Activated_Plugin', 'mailercloud_selected_sync_list_id', 'mailercloud_selected_sync_list');

