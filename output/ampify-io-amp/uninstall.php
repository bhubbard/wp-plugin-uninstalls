<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ampify_is_active');
delete_site_option('ampify_is_active');
delete_option('ampify_project_id');
delete_site_option('ampify_project_id');
delete_option('ampify_include_urls');
delete_site_option('ampify_include_urls');
delete_option('ampify_exclude_urls');
delete_site_option('ampify_exclude_urls');

