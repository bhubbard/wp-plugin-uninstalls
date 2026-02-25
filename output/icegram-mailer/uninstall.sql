-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icegram_mailer_ess_data', 'icegram_mailer_opted_for_sending_service', 'icegram_mailer_status', 'icegram_mailer_onboarding_complete', 'icegram_mailer_mailer_settings', 'icegram_mailer_branding_enabled', 'icegram_mailer_test_mailbox_user', 'icegram_mailer_db_version', 'active_sitewide_plugins', 'icegram_mailer_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time';

