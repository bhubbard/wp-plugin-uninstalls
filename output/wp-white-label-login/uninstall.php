<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpwll_options');
delete_site_option('wpwll_options');
delete_option('wpwll_background');
delete_site_option('wpwll_background');
delete_option('wpwll_logo');
delete_site_option('wpwll_logo');
delete_option('wpwll_custom_css');
delete_site_option('wpwll_custom_css');
delete_option('ewl_menu_title');
delete_site_option('ewl_menu_title');
delete_option('ewl_plugin_transient_cache');
delete_site_option('ewl_plugin_transient_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('ewl_update_plugins_list');

