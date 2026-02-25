-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopwp_should_flush_rewrite_rules', 'has_upgraded_to_shop_pro', 'active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'shopwp_table_charset_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_id', 'collection_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_id', 'collection_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_id', 'collection_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_id', 'collection_id');

