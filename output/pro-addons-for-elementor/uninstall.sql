-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pafe_review_notification_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pafe_template_type', 'pafe_template_post_type', 'pafe_template_taxonomy', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('pafe_template_type', 'pafe_template_post_type', 'pafe_template_taxonomy', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('pafe_template_type', 'pafe_template_post_type', 'pafe_template_taxonomy', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pafe_template_type', 'pafe_template_post_type', 'pafe_template_taxonomy', '_wp_attachment_image_alt');

