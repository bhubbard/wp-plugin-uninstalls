<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('runthings_ttc_selected_taxonomies');
delete_site_option('runthings_ttc_selected_taxonomies');
delete_option('runthings_ttc_height_settings');
delete_site_option('runthings_ttc_height_settings');
delete_option('runthings_ttc_show_links');
delete_site_option('runthings_ttc_show_links');
delete_option('runthings_ttc_allow_term_create');
delete_site_option('runthings_ttc_allow_term_create');
delete_option('runthings_ttc_search_settings');
delete_site_option('runthings_ttc_search_settings');

