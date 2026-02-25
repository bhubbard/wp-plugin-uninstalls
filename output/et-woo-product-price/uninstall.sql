-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pricelist_header', 'pricelist_logo', 'facebook_chat', 'woocommerce_cart_redirect_after_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'post_size', '_sale_price', '_regular_price', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'post_size', '_sale_price', '_regular_price', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'post_size', '_sale_price', '_regular_price', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'post_size', '_sale_price', '_regular_price', '_stock');

