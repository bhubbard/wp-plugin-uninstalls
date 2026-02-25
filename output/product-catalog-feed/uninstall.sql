-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpwoofeed_errors', 'mashsb_settings', 'woocommerce_calc_taxes', 'wpwoof-global-data', 'wpwoof-global-google-category', 'wpwoof_schedule', 'cron', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_default_country', 'woocommerce_price_decimal_sep', 'woocommerce_price_display_suffix', 'woocommerce_price_num_decimals', 'woocommerce_price_thousand_sep', 'woocommerce_manage_stock', 'woocommerce_prices_include_tax', 'woocommerce_tax_based_on', 'WPWOOF_DEBUG', 'wpwoof_message', 'wpwoof_permissions_role', 'wpwoof_notice_actions', 'pcbpys_license_status', 'WPWOOF_DB_VERSION', 'products_meta_keys');
DELETE FROM wp_options WHERE option_name LIKE 'wpwoof_feedlist_%';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woocommerce_wpwoof_data', '_variation_description', 'mashsb_og_image', 'mashsb_pinterest_image', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', 'feed_google_category', '_subscription_trial_length', '_sale_price', '_subscription_price', '_subscription_sign_up_fee', 'woosvi_slug', 'wpfoof-exclude-product', 'wpwoofgoogle', 'wpwoofextra', 'wpwoofadsensecustom');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woocommerce_wpwoof_data', '_variation_description', 'mashsb_og_image', 'mashsb_pinterest_image', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', 'feed_google_category', '_subscription_trial_length', '_sale_price', '_subscription_price', '_subscription_sign_up_fee', 'woosvi_slug', 'wpfoof-exclude-product', 'wpwoofgoogle', 'wpwoofextra', 'wpwoofadsensecustom');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woocommerce_wpwoof_data', '_variation_description', 'mashsb_og_image', 'mashsb_pinterest_image', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', 'feed_google_category', '_subscription_trial_length', '_sale_price', '_subscription_price', '_subscription_sign_up_fee', 'woosvi_slug', 'wpfoof-exclude-product', 'wpwoofgoogle', 'wpwoofextra', 'wpwoofadsensecustom');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woocommerce_wpwoof_data', '_variation_description', 'mashsb_og_image', 'mashsb_pinterest_image', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', 'feed_google_category', '_subscription_trial_length', '_sale_price', '_subscription_price', '_subscription_sign_up_fee', 'woosvi_slug', 'wpfoof-exclude-product', 'wpwoofgoogle', 'wpwoofextra', 'wpwoofadsensecustom');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpwoof%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpwoof%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpwoof%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpwoof%';

