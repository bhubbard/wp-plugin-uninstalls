<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('featcat_num_posts');
delete_site_option('featcat_num_posts');
delete_option('featcat_title');
delete_site_option('featcat_title');
delete_option('featcat_category_id');
delete_site_option('featcat_category_id');
delete_option('featcat_style');
delete_site_option('featcat_style');

