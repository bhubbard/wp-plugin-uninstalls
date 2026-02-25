-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lvfw_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linked_variations', 'linked_variation_products', '_linked_by_attributes', 'show_images', 'is_primary');
DELETE FROM wp_usermeta WHERE meta_key IN ('linked_variations', 'linked_variation_products', '_linked_by_attributes', 'show_images', 'is_primary');
DELETE FROM wp_termmeta WHERE meta_key IN ('linked_variations', 'linked_variation_products', '_linked_by_attributes', 'show_images', 'is_primary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linked_variations', 'linked_variation_products', '_linked_by_attributes', 'show_images', 'is_primary');

