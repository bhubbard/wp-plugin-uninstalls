-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jitsi_opt_select_api', 'jitsi_opt_free_domain', 'jitsi_opt_width', 'jitsi_opt_height', 'jitsi_opt_start_local_audio_muted', 'jitsi_opt_startWithVideoMuted', 'jitsi_opt_startScreenSharing', 'jitsi_opt_invite', 'jitsi_opt_app_id', 'webinar-and-video-conference-with-jitsi-meet_allow_tracking', 'jitsi_meet_wp_review_notice_interval', 'jitsi_meet_wp_affiliate_notice_interval', 'jitsi_meet_welcome_redirect', 'jitsi_pro_activate', 'jitsi_ultimate_activate', 'jitsi_pro_license_is_valid', 'jitsi_ultimate_license_is_valid', 'jitsi_opt_api_key', 'jitsi_opt_private_key', 'jitsi_opt_user_avatar', 'active_sitewide_plugins', 'jitsi_meet_wp_install_time', 'jitsi_saved_jwt', 'jitsi_meet_wp_review_notice_interval', 'jitsi_meet_wp_affiliate_notice_interval');
DELETE FROM wp_options WHERE option_name LIKE '%private_key';
DELETE FROM wp_options WHERE option_name LIKE '%api_key';
DELETE FROM wp_options WHERE option_name LIKE '%app_id';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jitsi_hosted_topbar_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('jitsi_hosted_topbar_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('jitsi_hosted_topbar_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jitsi_hosted_topbar_dismissed');

