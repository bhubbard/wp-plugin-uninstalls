-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vrts_test_runs_has_migrated_alerts', 'vrts_project_id', 'vrts_project_token', 'vrts_project_secret', 'vrts_disconnected', 'vrts_create_token', 'vrts_access_token', 'vrts_homepage_added', 'vrts_site_urls', 'vrts_connection_inactive', 'vrts_email_notification_cc_address', 'vrts_email_update_notification_address', 'vrts_email_api_notification_address', 'vrts_email_notification_address', 'vrts_license_success', 'vrts_license_failed', 'vrts_remaining_tests', 'vrts_total_tests', 'vrts_has_subscription', 'vrts_tier_id', 'vrts_email_manual_notification_address', 'vrts_click_selectors', 'vrts_license_key', 'vrts_automatic_comparison', 'vrts_updates_comparison');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vrts_onboarding');
DELETE FROM wp_usermeta WHERE meta_key IN ('vrts_onboarding');
DELETE FROM wp_termmeta WHERE meta_key IN ('vrts_onboarding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vrts_onboarding');

