<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('documentcloud_default_height');
delete_site_option('documentcloud_default_height');
delete_option('documentcloud_default_width');
delete_site_option('documentcloud_default_width');
delete_option('documentcloud_full_width');
delete_site_option('documentcloud_full_width');

