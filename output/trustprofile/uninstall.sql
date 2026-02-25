-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_order_received_endpoint');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpseo_global_identifier_values');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpseo_global_identifier_values');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpseo_global_identifier_values');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpseo_global_identifier_values');

