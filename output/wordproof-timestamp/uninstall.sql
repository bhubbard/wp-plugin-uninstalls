-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordproof_oauth', 'wordproof_wsfy', 'wordproof_hide_certificate_home', 'wordproof_certificate_text', 'wordproof_settings', 'wpseo', 'wordproof_migration_200_completed', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wordproof_last_timestamped_on', 'wordproof_timestamp_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('wordproof_last_timestamped_on', 'wordproof_timestamp_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('wordproof_last_timestamped_on', 'wordproof_timestamp_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wordproof_last_timestamped_on', 'wordproof_timestamp_data');

