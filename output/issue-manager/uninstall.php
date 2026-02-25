<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('im_published_categories');
delete_site_option('im_published_categories');
delete_option('im_unpublished_categories');
delete_site_option('im_unpublished_categories');

