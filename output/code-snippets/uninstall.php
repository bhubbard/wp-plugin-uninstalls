<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_shared_network_snippets');
delete_site_option('active_shared_network_snippets');
delete_option('recently_activated_snippets');
delete_site_option('recently_activated_snippets');
delete_option('shared_network_snippets');
delete_site_option('shared_network_snippets');
delete_option('menu_items');
delete_site_option('menu_items');
delete_option('code_snippets_version');
delete_site_option('code_snippets_version');
delete_option('code_snippets_cloud_settings');
delete_site_option('code_snippets_cloud_settings');
delete_option('code_snippets_settings');
delete_site_option('code_snippets_settings');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('cs_codevault_snippets');
delete_site_transient('cs_codevault_snippets');
delete_transient('cs_local_to_cloud_map');
delete_site_transient('cs_local_to_cloud_map');

