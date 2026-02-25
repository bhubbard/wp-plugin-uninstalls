-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_iu_paymenths_client_secret', 'woocommerce_iu_paymenths_settings');

