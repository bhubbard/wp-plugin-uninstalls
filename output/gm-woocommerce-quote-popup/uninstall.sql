-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmwqp_field_customizer_enble', 'gmwqp_field_customizer_required', 'gmwqp_field_customizer_field', 'gmwqp_field_customizer_type', 'gmwqp_field_customizer_order', 'gmwqp_field_customizer_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_gmwqp', 'productid_gmwqp');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_gmwqp', 'productid_gmwqp');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_gmwqp', 'productid_gmwqp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_gmwqp', 'productid_gmwqp');

