<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('racart_adminemail');
delete_site_option('racart_adminemail');
delete_option('racart_setcron_email');
delete_site_option('racart_setcron_email');
delete_option('email_hour');
delete_site_option('email_hour');
delete_option('racart_onehr_email_subject');
delete_site_option('racart_onehr_email_subject');
delete_option('racart_onehr_email_message');
delete_site_option('racart_onehr_email_message');
delete_option('enable_exitintent');
delete_site_option('enable_exitintent');
delete_option('racart_popup_title');
delete_site_option('racart_popup_title');
delete_option('racart_popup_content');
delete_site_option('racart_popup_content');
delete_option('attachment_idpath');
delete_site_option('attachment_idpath');

// Clear Cron Jobs
wp_clear_scheduled_hook('racart_your_three_minute_action_hook');

