-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slwsu_is_active_grouper', 'slwsu_lazyload_post_gallery_grouper', 'slwsu_lazyload_post_gallery_delete_options', 'slwsu_lazyload_post_gallery_add_gallery_title', 'slwsu_lazyload_post_gallery_add_carousel_title', 'slwsu_lazyload_post_gallery_add_carousel_caption', 'slwsu_lazyload_post_gallery_add_carousel_description', 'slwsu_lazyload_post_gallery_styles', 'slwsu_lazyload_post_gallery_options');
DELETE FROM wp_options WHERE option_name LIKE 'slwsu_lazyload_post_gallery_%';

