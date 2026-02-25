-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bacs_paybysquare_limit_exceeded', 'woocommerce_bacs_settings');

