-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blockbolt_merchant_name', 'blockbolt_blockchains', 'woocommerce_blockbolt_offsite_settings');

