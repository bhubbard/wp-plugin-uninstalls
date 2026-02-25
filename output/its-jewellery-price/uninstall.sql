-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itsjp_activation_result', 'itsjpp_license_key', 'itsjpp_local_key', 'itsjp_last_runtime', 'itsjp-pricebreakup-settings', 'woocommerce_dimension_unit', 'woocommerce_currency_pos', 'itsjp_after_install_notice', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'wc_var_prices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_jewellery_product', 'its_jp_pearl_cost', 'its_jp_extra_cost', 'its_jp_other_stone_cost', 'its_jp_extra_fee', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_text_field', 'order', 'billing_phone', 'shipping_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_jewellery_product', 'its_jp_pearl_cost', 'its_jp_extra_cost', 'its_jp_other_stone_cost', 'its_jp_extra_fee', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_text_field', 'order', 'billing_phone', 'shipping_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_jewellery_product', 'its_jp_pearl_cost', 'its_jp_extra_cost', 'its_jp_other_stone_cost', 'its_jp_extra_fee', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_text_field', 'order', 'billing_phone', 'shipping_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_jewellery_product', 'its_jp_pearl_cost', 'its_jp_extra_cost', 'its_jp_other_stone_cost', 'its_jp_extra_fee', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_text_field', 'order', 'billing_phone', 'shipping_phone');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%';

