<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FeedChanger_init_redirect_after_activation_option');
delete_site_option('FeedChanger_init_redirect_after_activation_option');
delete_option('feedChanger');
delete_site_option('feedChanger');

