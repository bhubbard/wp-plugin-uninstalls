-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_product_brand_active');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brand-image-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('brand-image-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('brand-image-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brand-image-id');

