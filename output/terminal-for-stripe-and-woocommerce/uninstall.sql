-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'woocommerce_stripe_terminal_settings', 'woocommerce_default_country', 'woocommerce_stripe_settings', 'woocommerce_prices_include_tax', 'woocommerce_tax_based_on', 'wc_stripe_terminal_version', 'wc_stripe_show_terminal_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stripe_intent_id', '_stripe_customer_id', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stripe_intent_id', '_stripe_customer_id', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stripe_intent_id', '_stripe_customer_id', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stripe_intent_id', '_stripe_customer_id', '_customer_user');

