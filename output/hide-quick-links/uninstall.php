<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_links');
delete_site_option('wp_links');
delete_option('plugin_link');
delete_site_option('plugin_link');
delete_option('comment_link');
delete_site_option('comment_link');
delete_option('option_link');
delete_site_option('option_link');

