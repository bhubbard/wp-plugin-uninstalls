-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('users_gallery_button_colours', 'users_gallery_text_font', 'users_gallery_terms_added');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gallery_item_video_url', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('gallery_item_video_url', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('gallery_item_video_url', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gallery_item_video_url', '_thumbnail_id');

