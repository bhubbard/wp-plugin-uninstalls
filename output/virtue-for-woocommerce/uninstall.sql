-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtue_woocommerce_store_id', 'virtue_woocommerce_impact_widget_enabled', 'woocommerce_cart_redirect_after_add', 'virtue-woocommerce-admin-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_variation_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_variation_description');

