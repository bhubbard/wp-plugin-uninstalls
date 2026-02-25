-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_variation_duplicator_cloned_ids', 'woo_variation_duplicator_exceed_clone_limit', 'woo_variation_duplicator_image_cloned');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_additional_variation_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_additional_variation_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_additional_variation_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_additional_variation_images');

