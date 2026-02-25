-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'action_scheduler_lock_async-request-runner', 'active_sitewide_plugins', 'notionwpsync_deactivated_notice_id', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_updated', 'status', 'last_error', 'notion_fields', 'run', 'content_ids', 'post_ids', '_notion_wp_sync_hash', '_notion_wp_sync_record_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_updated', 'status', 'last_error', 'notion_fields', 'run', 'content_ids', 'post_ids', '_notion_wp_sync_hash', '_notion_wp_sync_record_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_updated', 'status', 'last_error', 'notion_fields', 'run', 'content_ids', 'post_ids', '_notion_wp_sync_hash', '_notion_wp_sync_record_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_updated', 'status', 'last_error', 'notion_fields', 'run', 'content_ids', 'post_ids', '_notion_wp_sync_hash', '_notion_wp_sync_record_id');

