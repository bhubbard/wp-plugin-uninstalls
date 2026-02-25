<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('USER_PAGE_POST_TRACKING_VERSION');
delete_site_option('USER_PAGE_POST_TRACKING_VERSION');

