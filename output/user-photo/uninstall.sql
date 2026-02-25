-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('userphoto_jpeg_compression', 'userphoto_maximum_dimension', 'userphoto_thumb_dimension', 'userphoto_admin_notified', 'userphoto_level_moderated', 'userphoto_use_avatar_fallback', 'userphoto_override_avatar');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('userphoto_error', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', 'userphoto_rejectionreason');
DELETE FROM wp_usermeta WHERE meta_key IN ('userphoto_error', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', 'userphoto_rejectionreason');
DELETE FROM wp_termmeta WHERE meta_key IN ('userphoto_error', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', 'userphoto_rejectionreason');
DELETE FROM wp_commentmeta WHERE meta_key IN ('userphoto_error', 'userphoto_approvalstatus', 'userphoto_image_file', 'userphoto_image_width', 'userphoto_image_height', 'userphoto_thumb_file', 'userphoto_thumb_width', 'userphoto_thumb_height', 'userphoto_rejectionreason');

