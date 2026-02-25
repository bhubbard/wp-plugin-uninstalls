-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mzoo_didml_display_image_dimensions_01', 'mzoo_display_image_dimensions_01');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_square_pixels');
DELETE FROM wp_usermeta WHERE meta_key IN ('_square_pixels');
DELETE FROM wp_termmeta WHERE meta_key IN ('_square_pixels');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_square_pixels');

