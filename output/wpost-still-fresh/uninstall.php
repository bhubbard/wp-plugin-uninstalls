<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chron0striggeuss_active');
delete_site_option('chron0striggeuss_active');
delete_option('chron0striggeuss_posts_interval');
delete_site_option('chron0striggeuss_posts_interval');
delete_option('chron0striggeuss_posts_backdate');
delete_site_option('chron0striggeuss_posts_backdate');
delete_option('chron0striggeuss_pages_interval');
delete_site_option('chron0striggeuss_pages_interval');
delete_option('chron0striggeuss_pages_backdate');
delete_site_option('chron0striggeuss_pages_backdate');
delete_option('chron0striggeuss_stored_post_interval');
delete_site_option('chron0striggeuss_stored_post_interval');
delete_option('chron0striggeuss_stored_page_interval');
delete_site_option('chron0striggeuss_stored_page_interval');

