<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aru_readmorelogin_textfading_option');
delete_site_option('aru_readmorelogin_textfading_option');
delete_option('aru_readmorelogin_searchengines_option');
delete_site_option('aru_readmorelogin_searchengines_option');
delete_option('aru_readmorelogin_debuglog_option');
delete_site_option('aru_readmorelogin_debuglog_option');
delete_option('aru_readmorelogin_linking_option');
delete_site_option('aru_readmorelogin_linking_option');
delete_option('aru_readmorelogin_redirect_option');
delete_site_option('aru_readmorelogin_redirect_option');
delete_option('aru_readmorelogin_email_verification_option');
delete_site_option('aru_readmorelogin_email_verification_option');
delete_option('aru_readmorelogin_email_reset_password_option');
delete_site_option('aru_readmorelogin_email_reset_password_option');
delete_option('aru_readmorelogin_email_register_notification_option');
delete_site_option('aru_readmorelogin_email_register_notification_option');
delete_option('aru_readmorelogin_text_fade_option');
delete_site_option('aru_readmorelogin_text_fade_option');

// Clear Cron Jobs
wp_clear_scheduled_hook('rml_hourly_event');

