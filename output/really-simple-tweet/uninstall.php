<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aktt_twitter_username');
delete_site_option('aktt_twitter_username');
delete_option('aktt_twitter_password');
delete_site_option('aktt_twitter_password');

