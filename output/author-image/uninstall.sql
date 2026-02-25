-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_custom_entropy', 'widget_wp_custom_author_image', 'widget_contexts', 'wp_custom_author_image_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_custom_author_image_cache', 'wp_custom_aboutme_page', 'description', 'wp_custom_author_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_custom_author_image_cache', 'wp_custom_aboutme_page', 'description', 'wp_custom_author_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_custom_author_image_cache', 'wp_custom_aboutme_page', 'description', 'wp_custom_author_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_custom_author_image_cache', 'wp_custom_aboutme_page', 'description', 'wp_custom_author_image');

