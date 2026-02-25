-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngsurvey_version', 'ngsurvey_installing', 'ngsurvey_updated', 'ngsurvey_check_for_plugins_update', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ngsurvey_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('ngsurvey_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('ngsurvey_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ngsurvey_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_settings';

