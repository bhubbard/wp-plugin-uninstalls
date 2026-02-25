<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pb_duplicate_post_status');
delete_site_option('pb_duplicate_post_status');
delete_option('pb_duplicate_post_redirect');
delete_site_option('pb_duplicate_post_redirect');
delete_option('pb_duplicate_post_types');
delete_site_option('pb_duplicate_post_types');
delete_option('pb_duplicate_post_prefix');
delete_site_option('pb_duplicate_post_prefix');
delete_option('pb_duplicate_post_suffix');
delete_site_option('pb_duplicate_post_suffix');
delete_option('pb_duplicate_post_copy_terms');
delete_site_option('pb_duplicate_post_copy_terms');
delete_option('pb_duplicate_post_copy_meta');
delete_site_option('pb_duplicate_post_copy_meta');

