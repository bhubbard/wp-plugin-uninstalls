-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fr_multi_bank_transfer_gateways_for_woocommerce_bank_number');

