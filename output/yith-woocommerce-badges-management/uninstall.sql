-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith-wcbm-enable-shop-manager', 'yith-wcbm-hide-in-sidebar', 'yith-wcbm-hide-on-single-product', 'yith-wcbm-hide-on-sale-default', 'yith-wcbm-when-hide-on-sale', 'yith-wcbm-hide-on-mobile', 'yith-wcbm-mobile-breakpoint', 'yith-wcbm-force-badge-positioning', 'yith-wcbm-enable-force-badge-positioning', 'yith-wcbm-product-badge-overrides-default-on-sale', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith_wcbm_installing', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_meta_with_variations';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badge_meta', '_yith_wcbm_product_meta', '_enabled', '_type', '_text', '_background_color', '_position', '_alignment', '_image', '_scale_on_mobile', '_size', '_padding', '_border_radius', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badge_meta', '_yith_wcbm_product_meta', '_enabled', '_type', '_text', '_background_color', '_position', '_alignment', '_image', '_scale_on_mobile', '_size', '_padding', '_border_radius', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badge_meta', '_yith_wcbm_product_meta', '_enabled', '_type', '_text', '_background_color', '_position', '_alignment', '_image', '_scale_on_mobile', '_size', '_padding', '_border_radius', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badge_meta', '_yith_wcbm_product_meta', '_enabled', '_type', '_text', '_background_color', '_position', '_alignment', '_image', '_scale_on_mobile', '_size', '_padding', '_border_radius', 'dismissed_wp_pointers', 'blog-cats');

