-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_ninja_show_activation_notice', 'image_ninja_images_conversion_type', 'image_ninja_images_quality');

