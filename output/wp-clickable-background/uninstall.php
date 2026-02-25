<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-clickable-background-active');
delete_site_option('wp-clickable-background-active');
delete_option('wp-clickable-background-javascript');
delete_site_option('wp-clickable-background-javascript');
delete_option('wp-clickable-background-class');
delete_site_option('wp-clickable-background-class');
delete_option('wp-clickable-background-link');
delete_site_option('wp-clickable-background-link');
delete_option('wp-clickable-background-new');
delete_site_option('wp-clickable-background-new');
delete_option('wp-clickable-background-form-message');
delete_site_option('wp-clickable-background-form-message');

