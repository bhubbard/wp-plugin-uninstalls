-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_xmlrpc', 'userphoto_maximum_dimension', 'userphoto_thumb_dimension');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kapost_analytics', '_thumbnail_id', 'kapost_featured_image', '_wp_page_template', 'userphoto_original_image_file', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kapost_analytics', '_thumbnail_id', 'kapost_featured_image', '_wp_page_template', 'userphoto_original_image_file', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kapost_analytics', '_thumbnail_id', 'kapost_featured_image', '_wp_page_template', 'userphoto_original_image_file', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kapost_analytics', '_thumbnail_id', 'kapost_featured_image', '_wp_page_template', 'userphoto_original_image_file', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%thumbnail';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%thumbnail';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%thumbnail';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%thumbnail';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%rtmp';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%rtmp';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%rtmp';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%rtmp';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%external';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%external';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%external';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%external';

