-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_layer-crypto-checkout_settings', 'lccp_txhash_db_version');

