-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcomment_settings', 'wpcomment_meta_fields', 'wpcomment_meta', 'wpcomment_css_output', 'woocommerce_tax_display_shop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcomment_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcomment_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcomment_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcomment_fields');

