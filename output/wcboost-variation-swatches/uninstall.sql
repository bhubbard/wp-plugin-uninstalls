-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcboost_variation_swatches_ignore_restore', 'wcboost_variation_swatches_attributes', 'tawcvs_attribute_taxonomies', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('color', '_wc_attachment_source', 'image', 'label');
DELETE FROM wp_usermeta WHERE meta_key IN ('color', '_wc_attachment_source', 'image', 'label');
DELETE FROM wp_termmeta WHERE meta_key IN ('color', '_wc_attachment_source', 'image', 'label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('color', '_wc_attachment_source', 'image', 'label');

