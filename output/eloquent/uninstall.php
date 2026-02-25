<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eloquent_post_title_selector');
delete_site_option('eloquent_post_title_selector');
delete_option('eloquent_post_content_selector');
delete_site_option('eloquent_post_content_selector');
delete_option('eloquent_page_title_selector');
delete_site_option('eloquent_page_title_selector');
delete_option('eloquent_page_content_selector');
delete_site_option('eloquent_page_content_selector');

