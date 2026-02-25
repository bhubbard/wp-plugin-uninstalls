-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'video_carousel', '_wp_page_template', 'carousel_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'video_carousel', '_wp_page_template', 'carousel_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'video_carousel', '_wp_page_template', 'carousel_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('niso_img_carousel', 'caption_group', 'video_carousel', '_wp_page_template', 'carousel_settings');

