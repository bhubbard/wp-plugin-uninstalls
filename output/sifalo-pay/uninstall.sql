-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sifalo_pay_api_user', 'sifalo_pay_api_key', 'woocommerce_card_pay_settings');

