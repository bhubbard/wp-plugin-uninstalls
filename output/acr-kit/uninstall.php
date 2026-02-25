<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acr_kit_version');
delete_site_option('acr_kit_version');
delete_option('acr_kit_unsubscribe_page_id');
delete_site_option('acr_kit_unsubscribe_page_id');
delete_option('acr_kit_connected_by');
delete_site_option('acr_kit_connected_by');
delete_option('acr_kit_api_token');
delete_site_option('acr_kit_api_token');
delete_option('acr_kit_app_token');
delete_site_option('acr_kit_app_token');

// Delete Transients
delete_transient('acr_kit_connection_token');
delete_site_transient('acr_kit_connection_token');

