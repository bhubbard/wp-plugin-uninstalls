-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shop_ux_toolkit_options', 'woocommerce_shop_page_display', 'shop_ux_toolkit_review_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('category_order', 'rating', 'verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('category_order', 'rating', 'verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('category_order', 'rating', 'verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('category_order', 'rating', 'verified');

