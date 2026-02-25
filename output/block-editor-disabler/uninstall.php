<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bedp_disable_all_posts');
delete_site_option('bedp_disable_all_posts');
delete_option('bedp_disable_all_pages');
delete_site_option('bedp_disable_all_pages');
delete_option('bedp_disable_specific_pages');
delete_site_option('bedp_disable_specific_pages');
delete_option('bedp_disable_all');
delete_site_option('bedp_disable_all');

