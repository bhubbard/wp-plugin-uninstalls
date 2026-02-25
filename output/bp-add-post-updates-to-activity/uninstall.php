<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpapu_post_types');
delete_site_option('bpapu_post_types');
delete_option('bpapu_minimum_delay');
delete_site_option('bpapu_minimum_delay');
delete_option('bpapu_content_option');
delete_site_option('bpapu_content_option');

