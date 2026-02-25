-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spodpod_flush_rewrite_rules_flag', 'spodpod_plugin_version', 'ng_spod_pod_token', 'ng_spod_pod_isconnected');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_spod_order_commited', '_spod_sku', '_spod_order_id', '_thumbnail_id', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_spod_order_commited', '_spod_sku', '_spod_order_id', '_thumbnail_id', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_spod_order_commited', '_spod_sku', '_spod_order_id', '_thumbnail_id', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_spod_order_commited', '_spod_sku', '_spod_order_id', '_thumbnail_id', '_sku');

