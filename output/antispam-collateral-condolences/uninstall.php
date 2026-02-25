<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cws_acc_comment_status');
delete_site_option('cws_acc_comment_status');
delete_option('cws_acc_notification_style');
delete_site_option('cws_acc_notification_style');

