-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hypersell_token', 'woocommerce_currency', 'hypersell_installing');

