-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmrbw_enable', 'gmrbw_layout', 'gmrbw_stock_availability', 'gmrbw_price', 'gmrbw_product_title', 'gmrbw_showimg', 'gmrbw_showdesc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gmrbw_variation_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gmrbw_variation_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gmrbw_variation_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gmrbw_variation_name');

