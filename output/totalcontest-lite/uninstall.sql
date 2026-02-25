-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('totalcontest_nps', 'totalcontest_onboarding', 'widget_totalcontest_contest', 'totalcontest_uninstall_feedback', 'totalcontest_options_repository', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%account';
DELETE FROM wp_options WHERE option_name LIKE '%license_key';
DELETE FROM wp_options WHERE option_name LIKE '%license_status';
DELETE FROM wp_options WHERE option_name LIKE '%license_email';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_store_response';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tc_views', '_tc_votes', '_tc_rate', '_migrated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tc_views', '_tc_votes', '_tc_rate', '_migrated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tc_views', '_tc_votes', '_tc_rate', '_migrated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tc_views', '_tc_votes', '_tc_rate', '_migrated');

