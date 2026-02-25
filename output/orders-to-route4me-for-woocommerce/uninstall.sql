-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r4me_api_key', 'r4me_auto_send', 'r4m_sync_status', 'r4me_order_alias');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('route4me_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('route4me_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('route4me_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('route4me_order_id');

