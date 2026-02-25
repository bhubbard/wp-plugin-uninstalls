-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_zipmoney_settings', 'woocommerce_currency', 'active_sitewide_plugins', 'woocommerce_force_ssl_checkout');
DELETE FROM wp_options WHERE option_name LIKE 'au-%';

