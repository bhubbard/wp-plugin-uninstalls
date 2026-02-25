-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_status_scheduler');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scheduler_date', 'scheduler_check_status', 'scheduler_status', 'scheduler_check_category', 'scheduler_category_action', 'scheduler_category', 'scheduler_check_meta', 'scheduler_meta_key', 'scheduler_unstick', 'scheduler_stick', 'scheduler_email_notify', 'scheduler_category_action_add', 'scheduler_category_add', 'scheduler_category_action_remove', 'scheduler_category_remove', 'post_status_scheduler_date', 'scheduler_unpublished');
DELETE FROM wp_usermeta WHERE meta_key IN ('scheduler_date', 'scheduler_check_status', 'scheduler_status', 'scheduler_check_category', 'scheduler_category_action', 'scheduler_category', 'scheduler_check_meta', 'scheduler_meta_key', 'scheduler_unstick', 'scheduler_stick', 'scheduler_email_notify', 'scheduler_category_action_add', 'scheduler_category_add', 'scheduler_category_action_remove', 'scheduler_category_remove', 'post_status_scheduler_date', 'scheduler_unpublished');
DELETE FROM wp_termmeta WHERE meta_key IN ('scheduler_date', 'scheduler_check_status', 'scheduler_status', 'scheduler_check_category', 'scheduler_category_action', 'scheduler_category', 'scheduler_check_meta', 'scheduler_meta_key', 'scheduler_unstick', 'scheduler_stick', 'scheduler_email_notify', 'scheduler_category_action_add', 'scheduler_category_add', 'scheduler_category_action_remove', 'scheduler_category_remove', 'post_status_scheduler_date', 'scheduler_unpublished');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scheduler_date', 'scheduler_check_status', 'scheduler_status', 'scheduler_check_category', 'scheduler_category_action', 'scheduler_category', 'scheduler_check_meta', 'scheduler_meta_key', 'scheduler_unstick', 'scheduler_stick', 'scheduler_email_notify', 'scheduler_category_action_add', 'scheduler_category_add', 'scheduler_category_action_remove', 'scheduler_category_remove', 'post_status_scheduler_date', 'scheduler_unpublished');

