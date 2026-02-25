<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lh_logged_in_static_show_on_front');
delete_site_option('lh_logged_in_static_show_on_front');
delete_option('lh_logged_in_static_frontpage_page_id');
delete_site_option('lh_logged_in_static_frontpage_page_id');

