-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart', 'rtwpvs_pro_activate', 'rtwpvs_backup_attribute_types', 'rtwpvs_pro_version', 'woobundle_black_friday_offer_2024', 'rtwpvs_offer_july_2022', 'rtvs_plugin_activation_time', 'rtvs_spare_me', 'rtvs_remind_me', 'rtvs_rated', 'rtwpvs', 'wc_attribute_taxonomies', 'rtwpvs_pro_installing');
DELETE FROM wp_options WHERE option_name LIKE 'dismiss_bf_woobundle_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rtwpvs', 'rtwpvs_attribute_tooltip', 'product_attribute_color', 'is_dual_color', 'secondary_color', 'product_attribute_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rtwpvs', 'rtwpvs_attribute_tooltip', 'product_attribute_color', 'is_dual_color', 'secondary_color', 'product_attribute_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rtwpvs', 'rtwpvs_attribute_tooltip', 'product_attribute_color', 'is_dual_color', 'secondary_color', 'product_attribute_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rtwpvs', 'rtwpvs_attribute_tooltip', 'product_attribute_color', 'is_dual_color', 'secondary_color', 'product_attribute_image');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtwpvs_attribute_tooltip_%';

