<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clicktovote_width');
delete_site_option('clicktovote_width');
delete_option('clicktovote_height');
delete_site_option('clicktovote_height');

