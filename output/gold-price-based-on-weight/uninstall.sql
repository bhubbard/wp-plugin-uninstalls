-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jewellery_field', 'jewellery_field_variation');
DELETE FROM wp_usermeta WHERE meta_key IN ('jewellery_field', 'jewellery_field_variation');
DELETE FROM wp_termmeta WHERE meta_key IN ('jewellery_field', 'jewellery_field_variation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jewellery_field', 'jewellery_field_variation');

