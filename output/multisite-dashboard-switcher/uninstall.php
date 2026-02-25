<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msds_group');
delete_site_option('msds_group');
delete_option('msds_blog_ids');
delete_site_option('msds_blog_ids');

