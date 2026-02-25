-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_fields_billing', 'wc_fields_shipping', 'wc_fields_additional', '__dcfem_asset_version', 'dcfem_do_activation_redirect', 'woocommerce_ship_to_destination');
DELETE FROM wp_options WHERE option_name LIKE 'wc_fields_%';

