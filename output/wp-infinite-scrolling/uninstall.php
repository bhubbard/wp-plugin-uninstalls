<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpifs_container_selector');
delete_site_option('wpifs_container_selector');
delete_option('wpifs_post_selector');
delete_site_option('wpifs_post_selector');
delete_option('wpifs_enabled');
delete_site_option('wpifs_enabled');
delete_option('wpifs_pagination_selector');
delete_site_option('wpifs_pagination_selector');
delete_option('wpifs_next_selector');
delete_site_option('wpifs_next_selector');
delete_option('wpifs_loading_html');
delete_site_option('wpifs_loading_html');

