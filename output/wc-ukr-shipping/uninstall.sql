-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ship_to_destination', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'wcus_nova_poshta_default_carrier', 'wcus_show_poshtomats', '_transient_shipping-transient-version', 'wcus_ukrposhta_default_carrier', 'wc_ukr_shipping_workers_version', 'wc_ukr_shipping_spinner_color', 'wc_ukr_shipping_np_lang', 'smarty_parcel_acc', 'smartyparcel_manifest');
DELETE FROM wp_options WHERE option_name LIKE 'wc_ukr_shipping_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcus_%';

