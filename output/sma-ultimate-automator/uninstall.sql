-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpua_auto_publish_enabled', 'wpua_auto_delete_spam_enabled', 'wpua_auto_assign_category_enabled', 'wpua_auto_resize_images_enabled', 'wpua_auto_clear_cache_enabled', 'wpua_image_resize_width');

