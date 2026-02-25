<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbpress_notifications_new_topic_recipients');
delete_site_option('bbpress_notifications_new_topic_recipients');
delete_option('bbpress_notifications_new_topic_email_subject');
delete_site_option('bbpress_notifications_new_topic_email_subject');
delete_option('bbpress_notifications_new_topic_email_body');
delete_site_option('bbpress_notifications_new_topic_email_body');
delete_option('bbpress_notifications_new_reply_recipients');
delete_site_option('bbpress_notifications_new_reply_recipients');
delete_option('bbpress_notifications_new_reply_email_subject');
delete_site_option('bbpress_notifications_new_reply_email_subject');
delete_option('bbpress_notifications_new_reply_email_body');
delete_site_option('bbpress_notifications_new_reply_email_body');

