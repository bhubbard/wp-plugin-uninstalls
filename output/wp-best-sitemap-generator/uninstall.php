<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbs_secret_update_option');
delete_site_option('wpbs_secret_update_option');
delete_option('wpbs_include_post_type_post');
delete_site_option('wpbs_include_post_type_post');
delete_option('wpbs_include_post_type_page');
delete_site_option('wpbs_include_post_type_page');

