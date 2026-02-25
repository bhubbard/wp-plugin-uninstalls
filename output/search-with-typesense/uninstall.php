<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cm_typesense_plugin_activate');
delete_site_option('cm_typesense_plugin_activate');
delete_option('typesense_customizer_instant_search');
delete_site_option('typesense_customizer_instant_search');
delete_option('cm_typesense_admin_settings');
delete_site_option('cm_typesense_admin_settings');

