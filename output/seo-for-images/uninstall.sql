-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_for_images_alt', 'seo_for_images_title', 'seo_for_images_override', 'seo_for_images_override_title', 'seo_for_images_notice');

