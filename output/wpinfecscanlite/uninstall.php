<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpinfectlitescanner_thedbversion');
delete_site_option('wpinfectlitescanner_thedbversion');
delete_option('wpinfectlitescanner_cron_autoscan_info');
delete_site_option('wpinfectlitescanner_cron_autoscan_info');
delete_option('wpinfectlitescanner_cron_starttime_info');
delete_site_option('wpinfectlitescanner_cron_starttime_info');
delete_option('wpinfectlitescanner_cron_lastemailsend_info');
delete_site_option('wpinfectlitescanner_cron_lastemailsend_info');
delete_option('wpinfectlitescanner_cron_mailsend_info');
delete_site_option('wpinfectlitescanner_cron_mailsend_info');
delete_option('wpinfectlitescanner_cron_mailaddr_info');
delete_site_option('wpinfectlitescanner_cron_mailaddr_info');
delete_option('wpinfectlitescanner_userwhitelist');
delete_site_option('wpinfectlitescanner_userwhitelist');
delete_option('wpinfectlitescan_nfblock_version');
delete_site_option('wpinfectlitescan_nfblock_version');
delete_option('wpinfectlitescanner_hackmonitor_logcount');
delete_site_option('wpinfectlitescanner_hackmonitor_logcount');
delete_option('wpinfectlitescanner_hackmonitor');
delete_site_option('wpinfectlitescanner_hackmonitor');
delete_option('wpinfectlitescanner_valnchecktime');
delete_site_option('wpinfectlitescanner_valnchecktime');
delete_option('wpinfectlitescanner_valncheck');
delete_site_option('wpinfectlitescanner_valncheck');
delete_option('wpinfectlitescanner_hidealert_info');
delete_site_option('wpinfectlitescanner_hidealert_info');
delete_option('wpinfectlitescanner_blockips');
delete_site_option('wpinfectlitescanner_blockips');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpinfectlitescannercronjob');

