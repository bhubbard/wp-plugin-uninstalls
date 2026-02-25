-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprs_post_type', 'wprs_post_title', 'wprs_post_featured_iamge_size', 'wprs_image_number');

