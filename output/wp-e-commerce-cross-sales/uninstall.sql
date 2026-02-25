-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsc_also_bought', 'wpsc_also_bought_limit', 'wpsc_crosssale_image_width', 'wpsc_crosssale_image_height', 'wpsc_crosssales_db_version', 'product_image_width', 'product_image_height', 'show_thumbnails');

