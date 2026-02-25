<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('juicer_feed_exists');
delete_site_option('juicer_feed_exists');
delete_option('juicer_review_permanently_dismissed');
delete_site_option('juicer_review_permanently_dismissed');
delete_option('juicer_review_dismissed');
delete_site_option('juicer_review_dismissed');

