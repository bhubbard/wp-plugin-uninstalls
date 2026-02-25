<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ec_wp_delete_comments_options');
delete_site_option('ec_wp_delete_comments_options');

