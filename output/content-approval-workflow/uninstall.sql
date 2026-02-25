-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caw_general_settings', 'caw_plugin_version', 'caw_email_settings', 'caw_history_settings', 'caw_post_types', 'caw_notification_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('review_request_users', 'pending_review_status_users', 'approval_review_status_users', 'review_status', 'assignee_user', 'review_date', 'remaining_reviews', 'review_process_status', 'assignee_id', 'post_id', 'assigned_user_id', 'status');
DELETE FROM wp_usermeta WHERE meta_key IN ('review_request_users', 'pending_review_status_users', 'approval_review_status_users', 'review_status', 'assignee_user', 'review_date', 'remaining_reviews', 'review_process_status', 'assignee_id', 'post_id', 'assigned_user_id', 'status');
DELETE FROM wp_termmeta WHERE meta_key IN ('review_request_users', 'pending_review_status_users', 'approval_review_status_users', 'review_status', 'assignee_user', 'review_date', 'remaining_reviews', 'review_process_status', 'assignee_id', 'post_id', 'assigned_user_id', 'status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('review_request_users', 'pending_review_status_users', 'approval_review_status_users', 'review_status', 'assignee_user', 'review_date', 'remaining_reviews', 'review_process_status', 'assignee_id', 'post_id', 'assigned_user_id', 'status');

