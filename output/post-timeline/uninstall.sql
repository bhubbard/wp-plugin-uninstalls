-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agile_timeline_global_settings', 'post_timeline_global_settings', 'agile-timeline-err', 'post-timeline-err');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('agile-timeline-post-date', 'ptl-fav-icon', 'ptl-post-date', 'ptl-post-link', 'ptl-video-url', 'ptl-post-order', 'ptl-post-color', 'ptl-icon-type', 'ptl-media-type', 'ptl_gallery', 'ptl-custom-icon', '_wp_attachment_image_alt', 'ptl-like');
DELETE FROM wp_usermeta WHERE meta_key IN ('agile-timeline-post-date', 'ptl-fav-icon', 'ptl-post-date', 'ptl-post-link', 'ptl-video-url', 'ptl-post-order', 'ptl-post-color', 'ptl-icon-type', 'ptl-media-type', 'ptl_gallery', 'ptl-custom-icon', '_wp_attachment_image_alt', 'ptl-like');
DELETE FROM wp_termmeta WHERE meta_key IN ('agile-timeline-post-date', 'ptl-fav-icon', 'ptl-post-date', 'ptl-post-link', 'ptl-video-url', 'ptl-post-order', 'ptl-post-color', 'ptl-icon-type', 'ptl-media-type', 'ptl_gallery', 'ptl-custom-icon', '_wp_attachment_image_alt', 'ptl-like');
DELETE FROM wp_commentmeta WHERE meta_key IN ('agile-timeline-post-date', 'ptl-fav-icon', 'ptl-post-date', 'ptl-post-link', 'ptl-video-url', 'ptl-post-order', 'ptl-post-color', 'ptl-icon-type', 'ptl-media-type', 'ptl_gallery', 'ptl-custom-icon', '_wp_attachment_image_alt', 'ptl-like');

