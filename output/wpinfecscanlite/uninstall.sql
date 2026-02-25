-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpinfectlitescanner_thedbversion', 'wpinfectlitescanner_cron_autoscan_info', 'wpinfectlitescanner_cron_starttime_info', 'wpinfectlitescanner_cron_lastemailsend_info', 'wpinfectlitescanner_cron_mailsend_info', 'wpinfectlitescanner_cron_mailaddr_info', 'wpinfectlitescanner_userwhitelist', 'wpinfectlitescan_nfblock_version', 'wpinfectlitescanner_hackmonitor_logcount', 'wpinfectlitescanner_hackmonitor', 'wpinfectlitescanner_valnchecktime', 'wpinfectlitescanner_valncheck', 'wpinfectlitescanner_hidealert_info', 'wpinfectlitescanner_blockips');

