<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_feeds_option');
delete_site_option('disable_feeds_option');
delete_option('disable_feeds_redirect');
delete_site_option('disable_feeds_redirect');
delete_option('disable_feeds_allow_main');
delete_site_option('disable_feeds_allow_main');

