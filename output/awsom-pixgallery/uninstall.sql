-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awsom_pixgallery_all_images_text', 'PixGallery', 'awsom_pixgallery_cache_created', 'awsom_pixgallery_default_gallery', 'awsom_pixgallery_defaultgallery_created', 'awsom_pixgallery_db_version');

