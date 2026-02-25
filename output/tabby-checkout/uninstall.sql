-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_page_id', 'tabby_checkout_order_timeout', 'tabby_share_feed', 'tabby_countries', 'tabby_checkout_disable_for_sku', 'woocommerce_manage_stock', 'tabby_checkout_failed_action', 'woocommerce_cart_page_id', 'tabby_promo', 'tabby_promo_cart', 'tabby_promo_inherit_bg', 'tabby_checkout_public_key', 'tabby_checkout_promo_price', 'tabby_checkout_promo_min_total', 'tabby_plugin_version', 'woocommerce_tabby_installments_settings', 'tabby_checkout_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'tabby_checkout_%';

