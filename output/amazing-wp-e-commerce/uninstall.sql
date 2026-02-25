-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_gallery', 'single_view_image_width', 'wpsc_gallery_image_height', 'wpsc_gallery_image_width', 'product_view', 'grid_number_per_row', 'product_image_width', 'product_image_height');

