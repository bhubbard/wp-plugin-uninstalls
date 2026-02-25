-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_ps_general', 'wc_ps_cart_page', 'wc_ps_checkout_page', 'wc_ps_order_view_page', 'wc_ps_shop_page', 'wc_ps_single_product', '_wc_product_subtitle', '_wponion_endpoints', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_active_addons';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';
DELETE FROM wp_options WHERE option_name LIKE 'wponion_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_ps_subtitle', '_sku', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_ps_subtitle', '_sku', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_ps_subtitle', '_sku', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_ps_subtitle', '_sku', 'dismissed_wp_pointers');

