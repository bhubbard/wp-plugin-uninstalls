-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dirsize_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_wp_attachment_backup_sizes', '_thumbnail_id', '_wp_attachment_metadata', '_wp_old_slug', '_wp_old_date', '_pingme', '_encloseme');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_wp_attachment_backup_sizes', '_thumbnail_id', '_wp_attachment_metadata', '_wp_old_slug', '_wp_old_date', '_pingme', '_encloseme');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_wp_attachment_backup_sizes', '_thumbnail_id', '_wp_attachment_metadata', '_wp_old_slug', '_wp_old_date', '_pingme', '_encloseme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_wp_trash_meta_comments_status', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_wp_attachment_backup_sizes', '_thumbnail_id', '_wp_attachment_metadata', '_wp_old_slug', '_wp_old_date', '_pingme', '_encloseme');

