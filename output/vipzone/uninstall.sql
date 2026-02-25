-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('devtree_vipzone_hide_shop_for_guests', 'woocommerce_currency_pos', 'devtree_vipzone_delete_data_on_uninstall', 'DEVTREE_VIPZONE_PLUGIN_VERSION');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_devtree_vipzone_hide_product', '_devtree_vipzone_blur_product', '_devtree_vipzone_hide_title', '_devtree_vipzone_hide_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_devtree_vipzone_hide_product', '_devtree_vipzone_blur_product', '_devtree_vipzone_hide_title', '_devtree_vipzone_hide_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_devtree_vipzone_hide_product', '_devtree_vipzone_blur_product', '_devtree_vipzone_hide_title', '_devtree_vipzone_hide_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_devtree_vipzone_hide_product', '_devtree_vipzone_blur_product', '_devtree_vipzone_hide_title', '_devtree_vipzone_hide_price');

