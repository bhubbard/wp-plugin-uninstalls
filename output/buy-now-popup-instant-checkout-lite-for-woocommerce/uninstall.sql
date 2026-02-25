-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'wcbnpc_checkout_fields', 'wcbnpc_enabled_shipping_methods', 'wcbnpc_settings', 'woocommerce_currency_pos', 'wcbnpc_enabled_payment_gateways');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcbnpc_disable_buy_now_shop_page', '_wcbnpc_disable_buy_now', 'wcbnpc_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcbnpc_disable_buy_now_shop_page', '_wcbnpc_disable_buy_now', 'wcbnpc_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcbnpc_disable_buy_now_shop_page', '_wcbnpc_disable_buy_now', 'wcbnpc_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcbnpc_disable_buy_now_shop_page', '_wcbnpc_disable_buy_now', 'wcbnpc_dismissed_notices');

