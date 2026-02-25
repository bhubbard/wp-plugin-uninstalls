<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpxero_search_settings');
delete_site_option('wpxero_search_settings');
delete_option('wpxero_search_keep_data_on_uninstall');
delete_site_option('wpxero_search_keep_data_on_uninstall');
delete_option('wpxero_search_last_uninstall');
delete_site_option('wpxero_search_last_uninstall');
delete_option('wpxero_search_version');
delete_site_option('wpxero_search_version');
delete_option('wpxero_search_activation_date');
delete_site_option('wpxero_search_activation_date');
delete_option('wpxero_search_last_deactivation');
delete_site_option('wpxero_search_last_deactivation');
delete_option('wpxero_search_deactivation_feedback');
delete_site_option('wpxero_search_deactivation_feedback');

// Delete Transients
delete_transient('wpxero_search_builder_cache');
delete_site_transient('wpxero_search_builder_cache');

