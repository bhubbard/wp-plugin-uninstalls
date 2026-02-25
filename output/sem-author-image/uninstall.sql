-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sem_entropy', 'widget_author_image', 'widget_contexts', 'author_image_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('author_image_cache', 'sem_aboutme_page', 'description', 'author_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('author_image_cache', 'sem_aboutme_page', 'description', 'author_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('author_image_cache', 'sem_aboutme_page', 'description', 'author_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('author_image_cache', 'sem_aboutme_page', 'description', 'author_image');

