<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('soctweet_feeds');
delete_site_option('soctweet_feeds');
delete_option('soctweet_options');
delete_site_option('soctweet_options');

