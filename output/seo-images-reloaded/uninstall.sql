-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_images_reloaded_options', 'seo_images_reloaded_secret_id');

