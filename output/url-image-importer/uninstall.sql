-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uimptr_file_scan', 'tuxbfu_max_upload_size', 'tuxbfu_settings', 'tuxbfu_file_scan', 'ms_files_rewriting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'uimptr_notice_big_file_form_uploads_promo', '_wp_attachment_image_alt', 'bfu_notice_dismissed', 'bfu_upgrade_notice_dismissed', 'bfu_subscribe_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'uimptr_notice_big_file_form_uploads_promo', '_wp_attachment_image_alt', 'bfu_notice_dismissed', 'bfu_upgrade_notice_dismissed', 'bfu_subscribe_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'uimptr_notice_big_file_form_uploads_promo', '_wp_attachment_image_alt', 'bfu_notice_dismissed', 'bfu_upgrade_notice_dismissed', 'bfu_subscribe_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'uimptr_notice_big_file_form_uploads_promo', '_wp_attachment_image_alt', 'bfu_notice_dismissed', 'bfu_upgrade_notice_dismissed', 'bfu_subscribe_notice_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'uimptr_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'uimptr_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'uimptr_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'uimptr_notice_%';

