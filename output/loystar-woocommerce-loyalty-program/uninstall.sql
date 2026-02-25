-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_permalinks', 'wc_loystar_gokada_option_enable', 'wc_loystar-sync-status', 'wc_loystar-setting-total', 'wc_loystar-setting-synced', 'wc_loystar-sync-started-time', 'wc_loystar-last-sync-error', 'wc_loystar-sync-completed', 'wc_ls_product_sync_total_synced', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_loystar_order_sent', '_loystar_order_uuid', '_loystar_order_id', '_loystar_order_status', '_loystar_product_category_id', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_loystar_order_sent', '_loystar_order_uuid', '_loystar_order_id', '_loystar_order_status', '_loystar_product_category_id', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_loystar_order_sent', '_loystar_order_uuid', '_loystar_order_id', '_loystar_order_status', '_loystar_product_category_id', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_loystar_order_sent', '_loystar_order_uuid', '_loystar_order_id', '_loystar_order_status', '_loystar_product_category_id', '_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

