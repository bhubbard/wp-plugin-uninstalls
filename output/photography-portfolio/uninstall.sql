-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phort_sample_post', 'phort_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_attachment_video_url', 'phort_gallery', 'phort_subtitle', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_attachment_video_url', 'phort_gallery', 'phort_subtitle', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_attachment_video_url', 'phort_gallery', 'phort_subtitle', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_attachment_video_url', 'phort_gallery', 'phort_subtitle', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'phort_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'phort_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'phort_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'phort_%';

