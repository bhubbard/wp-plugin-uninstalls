<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPLINKS-nofollow');
delete_site_option('WPLINKS-nofollow');
delete_option('WPLINKS-comments');
delete_site_option('WPLINKS-comments');
delete_option('WPLINKS-excerpt');
delete_site_option('WPLINKS-excerpt');
delete_option('WPLINKS-title');
delete_site_option('WPLINKS-title');
delete_option('WPLINKS-external-image');
delete_site_option('WPLINKS-external-image');
delete_option('WPLINKS-open');
delete_site_option('WPLINKS-open');
delete_option('WPLINKS-image');
delete_site_option('WPLINKS-image');
delete_option('WPLINKS-whitelist');
delete_site_option('WPLINKS-whitelist');
delete_option('WPLINKS-title-shortcode');
delete_site_option('WPLINKS-title-shortcode');

