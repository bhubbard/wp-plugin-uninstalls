<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hreview_ratingby_text');
delete_site_option('hreview_ratingby_text');
delete_option('hreview_stars_text');
delete_site_option('hreview_stars_text');

