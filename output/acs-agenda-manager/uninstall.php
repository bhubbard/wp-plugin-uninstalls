<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acsagma_google_maps_api_key');
delete_site_option('acsagma_google_maps_api_key');
delete_option('acsagma_agenda_manager_plugin_version');
delete_site_option('acsagma_agenda_manager_plugin_version');
delete_option('acsagma_page');
delete_site_option('acsagma_page');
delete_option('acsagma_delete_data_on_uninstall');
delete_site_option('acsagma_delete_data_on_uninstall');

// Delete Transients
delete_transient('acsagma_agenda_events_cache');
delete_site_transient('acsagma_agenda_events_cache');

