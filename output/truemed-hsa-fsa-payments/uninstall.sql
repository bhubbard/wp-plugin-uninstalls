-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('truemed_hsa_fsa_idempotency_secret', 'woocommerce_truemed_hsa_fsa_payments_settings');

