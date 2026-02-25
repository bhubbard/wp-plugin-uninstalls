-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shoparize_partner_tracking', 'woocommerce_default_country', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shoparize_partner_brand', 'shoparize_partner_gtin', 'shoparize_partner_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('shoparize_partner_brand', 'shoparize_partner_gtin', 'shoparize_partner_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('shoparize_partner_brand', 'shoparize_partner_gtin', 'shoparize_partner_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shoparize_partner_brand', 'shoparize_partner_gtin', 'shoparize_partner_condition');

