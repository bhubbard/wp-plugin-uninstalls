<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky_custom_post_types_filters');
delete_site_option('sticky_custom_post_types_filters');
delete_option('sticky_custom_post_types');
delete_site_option('sticky_custom_post_types');

