-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ark_gateway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ark_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('ark_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('ark_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ark_total');

