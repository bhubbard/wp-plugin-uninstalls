<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apg_city_settings');
delete_site_option('apg_city_settings');
delete_option('apg_city_last_import');
delete_site_option('apg_city_last_import');
delete_option('apg_city_rows');
delete_site_option('apg_city_rows');
delete_option('apg_city_last_hash');
delete_site_option('apg_city_last_hash');
delete_option('apg_city_import_state');
delete_site_option('apg_city_import_state');

// Delete Transients
delete_transient('apg_city_plugin');
delete_site_transient('apg_city_plugin');
delete_transient('apg_city_seed_scheduled');
delete_site_transient('apg_city_seed_scheduled');
delete_transient('apg_city_import_lock');
delete_site_transient('apg_city_import_lock');

