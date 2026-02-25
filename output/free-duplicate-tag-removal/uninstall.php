<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fdtr_enable_feature');
delete_site_option('fdtr_enable_feature');
delete_option('fdtr_tag_names');
delete_site_option('fdtr_tag_names');
delete_option('fdtr_exclude_posts');
delete_site_option('fdtr_exclude_posts');
delete_option('fdtr_exclude_pages');
delete_site_option('fdtr_exclude_pages');

