-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paynecta_settings');
DELETE FROM wp_options WHERE option_name LIKE 'paynecta_payment_links_%';

