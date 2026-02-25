-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geargag_search', 'geargag_delete_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geargag_image_url', 'product_updated');
DELETE FROM wp_usermeta WHERE meta_key IN ('geargag_image_url', 'product_updated');
DELETE FROM wp_termmeta WHERE meta_key IN ('geargag_image_url', 'product_updated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geargag_image_url', 'product_updated');

