<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_url');
delete_site_option('image_url');
delete_option('scroll_contentSelector');
delete_site_option('scroll_contentSelector');
delete_option('scroll_nextSelector');
delete_site_option('scroll_nextSelector');
delete_option('scroll_itemSelector');
delete_site_option('scroll_itemSelector');
delete_option('scrolling_status');
delete_site_option('scrolling_status');

