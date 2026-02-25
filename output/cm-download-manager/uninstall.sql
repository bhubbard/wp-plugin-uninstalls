-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'cmdm_access_denied_page_id', 'sidebars_widgets', 'CMDM_downloading_permissions', 'CMDM_download_permissions', 'active_sitewide_plugins', 'cm_refresh_404_permalinks');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmdm_comment_old_status', 'cmdm_dismiss_notices', 'cmdm_allowed_user_id', 'cmdm_attachment', 'cmdm_file_size', '_cmdm_owner_id', '_wp_attachment_metadata', '_thumbnail_id', '_thread_last_poster', '_thread_title', '_thread_updated', '_thread_posts', '_thread_listeners', '_thread_resolved');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmdm_comment_old_status', 'cmdm_dismiss_notices', 'cmdm_allowed_user_id', 'cmdm_attachment', 'cmdm_file_size', '_cmdm_owner_id', '_wp_attachment_metadata', '_thumbnail_id', '_thread_last_poster', '_thread_title', '_thread_updated', '_thread_posts', '_thread_listeners', '_thread_resolved');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmdm_comment_old_status', 'cmdm_dismiss_notices', 'cmdm_allowed_user_id', 'cmdm_attachment', 'cmdm_file_size', '_cmdm_owner_id', '_wp_attachment_metadata', '_thumbnail_id', '_thread_last_poster', '_thread_title', '_thread_updated', '_thread_posts', '_thread_listeners', '_thread_resolved');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmdm_comment_old_status', 'cmdm_dismiss_notices', 'cmdm_allowed_user_id', 'cmdm_attachment', 'cmdm_file_size', '_cmdm_owner_id', '_wp_attachment_metadata', '_thumbnail_id', '_thread_last_poster', '_thread_title', '_thread_updated', '_thread_posts', '_thread_listeners', '_thread_resolved');

