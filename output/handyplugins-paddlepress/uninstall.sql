-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('handyplugins_paddlepress_installing', 'paddlepress_paddle_products', 'paddlepress_paddle_products_sandbox', 'paddlepress_paddle_subscriptions', 'paddlepress_paddle_subscriptions_sandbox', 'paddlepress_billing_prices', 'paddlepress_billing_prices_sandbox', 'paddlepress_billing_products', 'paddlepress_billing_products_sandbox');

