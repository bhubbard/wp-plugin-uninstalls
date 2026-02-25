-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obox-mobile', 'orig_page_on_front');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('main_video', 'video_link', 'video_hosted', 'oembed_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('main_video', 'video_link', 'video_hosted', 'oembed_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('main_video', 'video_link', 'video_hosted', 'oembed_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('main_video', 'video_link', 'video_hosted', 'oembed_info');

