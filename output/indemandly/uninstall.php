<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_indemandly');
delete_site_option('wp_indemandly');
delete_option('wp_noexternallinks');
delete_site_option('wp_noexternallinks');

