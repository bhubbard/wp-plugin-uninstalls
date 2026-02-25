-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wac_subdomain', 'wac_login', 'wac_key', 'wooac_orders_send_from', 'wooms_orders_send_from', 'wac_sync_time', 'wac_sync_disable', 'wac_last_start');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wooamoc_send_timestamp', 'wac_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wooamoc_send_timestamp', 'wac_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wooamoc_send_timestamp', 'wac_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wooamoc_send_timestamp', 'wac_id');

