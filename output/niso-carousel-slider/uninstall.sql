-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('niso_carousel_info_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'niso_post_carousel', 'video_carousel', '_wp_page_template', 'carousel_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'niso_post_carousel', 'video_carousel', '_wp_page_template', 'carousel_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'niso_post_carousel', 'video_carousel', '_wp_page_template', 'carousel_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'niso_post_carousel', 'video_carousel', '_wp_page_template', 'carousel_settings');

