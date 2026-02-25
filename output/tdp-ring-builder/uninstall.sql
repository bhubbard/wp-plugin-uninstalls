-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tdprb-access-token-val', 'tdprb-access-token', 'tdprb-access-token-data', 'tdprb_settings', 'tdprb_lab_settings', 'tdprb_natural_settings', 'tdprb_ring_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_custom_tdp_product', 'diamond_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_custom_tdp_product', 'diamond_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_custom_tdp_product', 'diamond_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_custom_tdp_product', 'diamond_sku');

