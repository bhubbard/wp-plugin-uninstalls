-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('au_attachment_usage_found', 'au_color_status', 'au_auto_sync', 'au_filter_by_usage', 'au_display_usage_listview', 'sidebars_widgets', 'widget_media_image', 'widget_media_gallery', 'widget_media_audio', 'widget_media_video', 'au_is_rating_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('au_attachment_item_usage');
DELETE FROM wp_usermeta WHERE meta_key IN ('au_attachment_item_usage');
DELETE FROM wp_termmeta WHERE meta_key IN ('au_attachment_item_usage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('au_attachment_item_usage');

