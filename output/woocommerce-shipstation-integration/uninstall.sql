-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'wc_shipstation_hide_activate_notice', 'woocommerce_shipstation_auth_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_shipstation-setup_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_shipstation-setup_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_shipstation-setup_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_shipstation-setup_notice');

