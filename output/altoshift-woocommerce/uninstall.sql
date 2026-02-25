-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('altoshift_send_checkout_stats', 'altoshift_engine_token', 'active_sitewide_plugins', 'altoshift_feed_price_export', 'altoshift_feed_password_protected', 'altoshift_feed_password', 'altoshift_layer_enabled', 'altoshift_layer_code');

