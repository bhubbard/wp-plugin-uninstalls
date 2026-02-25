<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('instapage_front_page_id');
delete_site_option('instapage_front_page_id');
delete_option('instapage_404_page_id');
delete_site_option('instapage_404_page_id');

