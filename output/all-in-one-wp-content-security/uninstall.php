<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_all_in_one_wp_content_security');
delete_site_option('_all_in_one_wp_content_security');

