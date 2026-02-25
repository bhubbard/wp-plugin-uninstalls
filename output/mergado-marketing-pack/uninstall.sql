-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmp_plugin_ean_default_set', 'mmp_token', 'heureka-verify-opt-out-text-en_US', 'feed-form-category', 'feed-form-customer', 'feed-form-stock', 'import-form-products', 'feed-form-products', 'top_glami-form-active-lang-CZ', 'glami_top_code-CZ', 'glami-selection-top', 'glami-form-top', 'm_feed_vat_option', 'mmp-wizard-finished-product', 'mmp-wizard-finished-stock', 'mmp-wizard-finished-category', 'mergado-feed-products-default-step', 'mergado-feed-category-default-step', 'mergado-feed-stock-default-step', 'mergado-feed-import-default-step', 'mmp-wp-product-feed-visibility-other--public', 'mmp-wc-product-feed-visibility-other--visible', 'mmp-wc-product-feed-visibility-other--catalog', 'mmp-wc-product-feed-visibility-other--search', 'mmp-wc-product-feed-visibility-other--hidden', 'mmp-wp-product-feed-visibility-product--public', 'mmp-wc-product-feed-visibility-product--visible', 'mmp-wc-product-feed-visibility-product--catalog', 'mmp-wc-product-feed-visibility-product--search', 'mmp-wc-product-feed-visibility-product--hidden', 'mergado_google_analytics_active', 'mergado_google_analytics_code', 'mergado_google_analytics_ecommerce', 'mergado_google_analytics_ecommerce_enhanced', 'gtagjs-vat-included', 'mmp-ga-ua-active', 'mmp-ga-ua-code', 'mmp-ga-ua-ecommerce', 'mmp-ga-ua-enhanced-ecommerce', 'mmp-ga-ua-vat-included', 'mergado_google_analytics_tracking', 'ga_refund_active', 'ga_refund_code', 'woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'heureka-verify-opt-out-text-%';
DELETE FROM wp_options WHERE option_name LIKE '%-start';
DELETE FROM wp_options WHERE option_name LIKE '%-schedule';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_global_unique_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_global_unique_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_global_unique_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_global_unique_id');

