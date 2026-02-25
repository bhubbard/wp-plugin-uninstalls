-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oasiswf_email_settings', 'oasiswf_custom_workflow_terminology', 'oasiswf_priority_setting', 'oasiswf_default_due_days', 'oasiswf_reminder_days', 'oasiswf_reminder_days_after', 'oasiswf_activate_workflow', 'oasiswf_show_wfsettings_on_post_types', 'oasiswf_activate_revision_process', 'oasiswf_review_notice', 'oasiswf_review_rating_interval', 'oasiswf_workflow_completed_post_count', 'oasiswf_publish_date_setting', 'oasiswf_show_upgrade_notice', 'oasiswf_path', 'oasiswf_placeholders', 'oasiswf_status', 'oasiswf_process', 'oasiswf_info', 'oasiswf_skip_workflow_roles', 'oasiswf_hide_workflow_graphic', 'oasiswf_view_other_users_inbox_roles', 'oasiswf_abort_workflow_roles', 'oasiswf_review_process_setting', 'oasiswf_roles_can_bulk_approval', 'ow-cache-active-workflows', 'owf_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oasis_is_in_workflow', '_oasis_task_priority', 'nickname', 'first_name', 'last_name', '_oasis_original', '_oasis_current_revision', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oasis_is_in_workflow', '_oasis_task_priority', 'nickname', 'first_name', 'last_name', '_oasis_original', '_oasis_current_revision', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oasis_is_in_workflow', '_oasis_task_priority', 'nickname', 'first_name', 'last_name', '_oasis_original', '_oasis_current_revision', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oasis_is_in_workflow', '_oasis_task_priority', 'nickname', 'first_name', 'last_name', '_oasis_original', '_oasis_current_revision', 'dismissed_wp_pointers');

