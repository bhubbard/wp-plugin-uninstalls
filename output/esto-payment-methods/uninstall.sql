-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_esto_settings', 'esto_calculator_enabled', 'esto_calculator_hook', 'esto_calculator_type', 'esto_calculator_esto3_months', 'esto_calculator_show_logo', 'esto_calculator_whitelabel', 'esto_calculator_show_on_loop', 'esto_calculator_show_on_product', 'esto_calculator_monthly_payment_url', 'esto_enable_deals_tracking', 'everflow_advertiser_id', 'everflow_advertiser_id_lv', 'everflow_advertiser_id_lt', 'everflow_ef_region_token', 'everflow_ef_region_token_lv', 'everflow_ef_region_token_lt', 'esto_default_country', 'everflow_advertiser_id_ee', 'everflow_ef_region_token_ee');
DELETE FROM wp_options WHERE option_name LIKE 'esto_custom_logo_hire_purchase_%';
DELETE FROM wp_options WHERE option_name LIKE 'esto_custom_logo_esto_x_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%esto_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_esto_purchase_url_timeout', 'woo_esto_purchase_url', 'woo_esto_purchase_url_amount', 'woo_esto_purchase_url_id', 'woo_esto_purchase_url_payment_method_key', 'esto_order_nr', 'esto_prefixed_order_id', 'esto_preferred_bank');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_esto_purchase_url_timeout', 'woo_esto_purchase_url', 'woo_esto_purchase_url_amount', 'woo_esto_purchase_url_id', 'woo_esto_purchase_url_payment_method_key', 'esto_order_nr', 'esto_prefixed_order_id', 'esto_preferred_bank');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_esto_purchase_url_timeout', 'woo_esto_purchase_url', 'woo_esto_purchase_url_amount', 'woo_esto_purchase_url_id', 'woo_esto_purchase_url_payment_method_key', 'esto_order_nr', 'esto_prefixed_order_id', 'esto_preferred_bank');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_esto_purchase_url_timeout', 'woo_esto_purchase_url', 'woo_esto_purchase_url_amount', 'woo_esto_purchase_url_id', 'woo_esto_purchase_url_payment_method_key', 'esto_order_nr', 'esto_prefixed_order_id', 'esto_preferred_bank');

