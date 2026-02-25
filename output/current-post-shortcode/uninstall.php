<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('current-post-shortcode-installed');
delete_site_option('current-post-shortcode-installed');
delete_option('current-post-shortcode-version');
delete_site_option('current-post-shortcode-version');

