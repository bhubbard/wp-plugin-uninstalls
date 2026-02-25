-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_icwoorok2_bancontact_settings', 'woocommerce_icwoorok2_cards_settings', 'woocommerce_icwoorok2_ideal_settings', 'woocommerce_icwoorok2_paypal_settings', 'icwoorok2_signing_key', 'icwoorok2_debugwebhook', 'icwoorok2_sandbox', 'woocommerce_hold_stock_minutes', 'icwoorok2_refresh_token', 'icwoorok2_merchant_order_id', 'icwoorok2_use_old_domain');

