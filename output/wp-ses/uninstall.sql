-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wposes_tracking_key', 'site_admins', 'wposes_last_cron_run', 'wposes_last_cron_check', 'wposes_cron_error_email', 'wposes_lite_version', 'wposes_doing_upgrade', 'wposes_settings', 'wpses_options', 'wposes_deactivated_notice_id', 'wposes_unverified_senders', 'wposes_notices', 'wposes_doing_cron_check', 'wposes_verified_senders', 'wposes_triggered_queue');
DELETE FROM wp_options WHERE option_name LIKE 'wposes_constant_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wposes_notices', 'wposes_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wposes_notices', 'wposes_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wposes_notices', 'wposes_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wposes_notices', 'wposes_dismissed_notices');

