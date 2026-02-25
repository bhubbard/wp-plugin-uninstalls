-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_slyd_attached_image', '_slyd_attached_image_upload_feedback');
DELETE FROM wp_usermeta WHERE meta_key IN ('_slyd_attached_image', '_slyd_attached_image_upload_feedback');
DELETE FROM wp_termmeta WHERE meta_key IN ('_slyd_attached_image', '_slyd_attached_image_upload_feedback');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_slyd_attached_image', '_slyd_attached_image_upload_feedback');

