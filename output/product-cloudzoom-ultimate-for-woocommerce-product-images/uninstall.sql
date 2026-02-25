-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgwcz_options', 'woocommerce_thumbnail_image_width');

