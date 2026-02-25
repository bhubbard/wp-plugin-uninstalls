-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kwms_api_key', 'kwms_sync_external_id', 'kwms_list_id', 'kwms_segment_id', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'kwms_list_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'kwms_segment_size_%';

