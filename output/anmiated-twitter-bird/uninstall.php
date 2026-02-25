<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('animated_account');
delete_site_option('animated_account');
delete_option('animated_tweet');
delete_site_option('animated_tweet');

