-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_paysera_settings', 'paysera_plugins_needs_deactivation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paysera_new_delivery_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('paysera_new_delivery_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('paysera_new_delivery_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paysera_new_delivery_notice');

