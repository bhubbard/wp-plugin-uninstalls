<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_post_signature_global');
delete_site_option('wp_post_signature_global');
delete_option('wp_post_signature');
delete_site_option('wp_post_signature');

