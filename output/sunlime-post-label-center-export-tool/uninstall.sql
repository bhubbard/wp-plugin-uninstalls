-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('splc_options', 'woocommerce_gzdp_invoice_path_suffix');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sent_to_plc', '_splc_shipping_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sent_to_plc', '_splc_shipping_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sent_to_plc', '_splc_shipping_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sent_to_plc', '_splc_shipping_data');

