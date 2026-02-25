-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_esm_activated', 'ayudawp_esm_version', 'woocommerce_store_address');

