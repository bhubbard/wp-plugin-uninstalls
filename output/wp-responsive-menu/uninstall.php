<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprmenu_options');
delete_site_option('wprmenu_options');
delete_option('wprmenu_demo_id');
delete_site_option('wprmenu_demo_id');
delete_option('wpr_optionsframework');
delete_site_option('wpr_optionsframework');

// Delete Transients
delete_transient('wpr_live_settings');
delete_site_transient('wpr_live_settings');
delete_transient('wprm_api_demo_items_list');
delete_site_transient('wprm_api_demo_items_list');

