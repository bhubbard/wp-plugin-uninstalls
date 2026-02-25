<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_post_type');
delete_site_option('auto_post_type');
delete_option('auto_search_in');
delete_site_option('auto_search_in');
delete_option('auto_post_type_front');
delete_site_option('auto_post_type_front');
delete_option('auto_search_in_front');
delete_site_option('auto_search_in_front');
delete_option('auto_post_thumb_front');
delete_site_option('auto_post_thumb_front');
delete_option('auto_post_excerpt_front');
delete_site_option('auto_post_excerpt_front');
delete_option('auto_post_date_front');
delete_site_option('auto_post_date_front');
delete_option('auto_post_limit_front');
delete_site_option('auto_post_limit_front');

