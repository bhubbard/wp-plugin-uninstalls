<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('merchium_widget_code');
delete_site_option('merchium_widget_code');
delete_option('merchium_store_page_id');
delete_site_option('merchium_store_page_id');
delete_option('merchium_installation_date');
delete_site_option('merchium_installation_date');
delete_option('merchium_show_vote_message');
delete_site_option('merchium_show_vote_message');
delete_option('merchium_widget_is_connected');
delete_site_option('merchium_widget_is_connected');

