-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disable_featured_image', 'ea_featured_image_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('disable_featured_image', 'ea_featured_image_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('disable_featured_image', 'ea_featured_image_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disable_featured_image', 'ea_featured_image_display');

