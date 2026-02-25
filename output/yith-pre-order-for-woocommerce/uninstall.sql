-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_wcpo_enable_pre_order', 'yith_wcpo_default_add_to_cart_label', 'ywpo_availability_in_shop', 'yith_wcpo_guest_users_price', 'yith_wcpo_show_regular_price', 'yith_wcpo_default_availability_date_label', 'yith_wcpo_enable_automatic_date_formatting', 'yith_wcpo_enable_pre_order_purchasable', 'yith-ywpo-flush-rewrite-rules', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ywpo_price_adjustment', '_ywpo_adjustment_type', '_ywpo_price_adjustment_amount', '_ywpo_preorder', '_ywpo_has_variations', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ywpo_price_adjustment', '_ywpo_adjustment_type', '_ywpo_price_adjustment_amount', '_ywpo_preorder', '_ywpo_has_variations', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ywpo_price_adjustment', '_ywpo_adjustment_type', '_ywpo_price_adjustment_amount', '_ywpo_preorder', '_ywpo_has_variations', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ywpo_price_adjustment', '_ywpo_adjustment_type', '_ywpo_price_adjustment_amount', '_ywpo_preorder', '_ywpo_has_variations', 'dismissed_wp_pointers', 'blog-cats');

