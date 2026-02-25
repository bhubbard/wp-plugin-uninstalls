-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skyroom_site_url', 'skyroom_api_key', 'skyroom_integrated_plugin', 'skyroom_link_ttl', 'skyroom_link_ttl_unit', 'skyroom_last_sync', 'skyroom_db_version', 'skyroom_sync_data_status');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_skyroom_access', 'vibe_product', '_skyroom_id', '_skyroom_title', '_skyroom_name', '_skyroom_capacity', 'total_sales', '_stock', '_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_skyroom_access', 'vibe_product', '_skyroom_id', '_skyroom_title', '_skyroom_name', '_skyroom_capacity', 'total_sales', '_stock', '_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_skyroom_access', 'vibe_product', '_skyroom_id', '_skyroom_title', '_skyroom_name', '_skyroom_capacity', 'total_sales', '_stock', '_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_skyroom_access', 'vibe_product', '_skyroom_id', '_skyroom_title', '_skyroom_name', '_skyroom_capacity', 'total_sales', '_stock', '_manage_stock');

