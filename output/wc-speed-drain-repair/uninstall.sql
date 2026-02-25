-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('repair_woocommerce_speed_options', 'repair_woocommerce_speed_custom_handles', '_repair_woocommerce_speed_do_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_repair_woo_custom_handles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_repair_woo_custom_handles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_repair_woo_custom_handles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_repair_woo_custom_handles');

