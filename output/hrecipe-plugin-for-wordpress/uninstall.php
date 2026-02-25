<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hrecipe_rating_text');
delete_site_option('hrecipe_rating_text');
delete_option('hrecipe_stars_text');
delete_site_option('hrecipe_stars_text');

