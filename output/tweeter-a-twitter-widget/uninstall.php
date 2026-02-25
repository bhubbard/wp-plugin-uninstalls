<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tweeter_username');
delete_site_option('tweeter_username');
delete_option('tweeter_tweetCount');
delete_site_option('tweeter_tweetCount');
delete_option('tweeter_delay');
delete_site_option('tweeter_delay');
delete_option('tweeter_replies');
delete_site_option('tweeter_replies');

