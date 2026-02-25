<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('la_active_time');
delete_site_option('la_active_time');
delete_option('la_review_dismiss');
delete_site_option('la_review_dismiss');

