-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unzer_public_key', 'unzer_chargeback_order_status', 'unzer_captured_order_status', 'unzer_private_key', 'woocommerce_default_country', 'unzer_authorized_order_status');

