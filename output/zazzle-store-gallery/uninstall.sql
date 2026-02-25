-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zazzle_gallery_name', 'zazzle_theme', 'zazzle_background_color', 'zazzle_product_image_size', 'zazzle_product_line');

