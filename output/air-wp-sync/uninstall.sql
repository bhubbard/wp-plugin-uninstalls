-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'action_scheduler_lock_async-request-runner', 'active_sitewide_plugins', 'airwpsync_deactivated_notice_id', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%-start-date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_updated', 'status', 'content_ids', 'count_deleted', 'count_processed', 'latest_log_url', 'last_error', 'errors', 'table_fields', 'run', 'last_sync_time', '_air_wp_sync_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_updated', 'status', 'content_ids', 'count_deleted', 'count_processed', 'latest_log_url', 'last_error', 'errors', 'table_fields', 'run', 'last_sync_time', '_air_wp_sync_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_updated', 'status', 'content_ids', 'count_deleted', 'count_processed', 'latest_log_url', 'last_error', 'errors', 'table_fields', 'run', 'last_sync_time', '_air_wp_sync_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_updated', 'status', 'content_ids', 'count_deleted', 'count_processed', 'latest_log_url', 'last_error', 'errors', 'table_fields', 'run', 'last_sync_time', '_air_wp_sync_hash');

