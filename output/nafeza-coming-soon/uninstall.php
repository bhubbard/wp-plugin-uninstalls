<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nafeza_coming_soon_active');
delete_site_option('nafeza_coming_soon_active');
delete_option('nafeza_coming_soon_page_id');
delete_site_option('nafeza_coming_soon_page_id');
delete_option('nafeza_coming_soon_message');
delete_site_option('nafeza_coming_soon_message');

