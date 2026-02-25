-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('document-library-lite-setup-wizard_completed', 'dlp_should_flush_rewrite_rules', 'dlw_should_flush_rewrite_rules', 'dlw_review_notice_triggered', 'dlw_document_count', 'dlw_review_notice_user', 'dlw_review_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dlp_document_link_type', '_dlp_attached_file_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dlp_document_link_type', '_dlp_attached_file_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dlp_document_link_type', '_dlp_attached_file_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dlp_document_link_type', '_dlp_attached_file_id', '_wp_attachment_image_alt');

