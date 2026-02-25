-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eim_review_notice_dismissed', '_wp_attached_file', '_wp_attachment_image_alt', '_eim_file_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('eim_review_notice_dismissed', '_wp_attached_file', '_wp_attachment_image_alt', '_eim_file_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('eim_review_notice_dismissed', '_wp_attached_file', '_wp_attachment_image_alt', '_eim_file_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eim_review_notice_dismissed', '_wp_attached_file', '_wp_attachment_image_alt', '_eim_file_hash');

