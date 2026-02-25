<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_redirect_option');
delete_site_option('wp_redirect_option');
delete_option('wp_redirect_option_content');
delete_site_option('wp_redirect_option_content');
delete_option('wp_redirect_option_comment');
delete_site_option('wp_redirect_option_comment');
delete_option('wp_redirect_option_author');
delete_site_option('wp_redirect_option_author');
delete_option('wp_redirect_option_exception');
delete_site_option('wp_redirect_option_exception');

