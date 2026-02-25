<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icp_tracking_code');
delete_site_option('icp_tracking_code');
delete_option('icp_tracking_domain');
delete_site_option('icp_tracking_domain');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('update_themes');
delete_site_option('update_themes');
delete_option('icp_plugin_key');
delete_site_option('icp_plugin_key');
delete_option('srpd_clickbank_id');
delete_site_option('srpd_clickbank_id');
delete_option('icp_wp_auto_update');
delete_site_option('icp_wp_auto_update');
delete_option('icp_plugins_auto_update');
delete_site_option('icp_plugins_auto_update');
delete_option('icp_themes_auto_update');
delete_site_option('icp_themes_auto_update');
delete_option('icp_sa_forms_db_version');
delete_site_option('icp_sa_forms_db_version');
delete_option('serped_db_version');
delete_site_option('serped_db_version');
delete_option('widget_srpd_sa_widget');
delete_site_option('widget_srpd_sa_widget');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

