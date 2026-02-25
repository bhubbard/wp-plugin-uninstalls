<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbs_settings');
delete_site_option('wpbs_settings');
delete_option('wpbs_hide_v2_welcome_screen');
delete_site_option('wpbs_hide_v2_welcome_screen');
delete_option('wpbs_db_version');
delete_site_option('wpbs_db_version');
delete_option('wpbs_version');
delete_site_option('wpbs_version');
delete_option('wpbs_first_activation');
delete_site_option('wpbs_first_activation');
delete_option('wpbs_upgrade_5_0_0');
delete_site_option('wpbs_upgrade_5_0_0');
delete_option('wpbs_upgrade_5_0_0_skipped');
delete_site_option('wpbs_upgrade_5_0_0_skipped');
delete_option('wpbs_serial_key');
delete_site_option('wpbs_serial_key');
delete_option('wpbs_registered_website_id');
delete_site_option('wpbs_registered_website_id');
delete_option('wpbs-options');
delete_site_option('wpbs-options');
delete_option('wpbs-languages');
delete_site_option('wpbs-languages');

// Delete Transients
delete_transient('wpbs_subscription_type');
delete_site_transient('wpbs_subscription_type');
delete_transient('wpbs_serial_status');
delete_site_transient('wpbs_serial_status');
delete_transient('wpbs_upgrader_legend_items_relationships');
delete_site_transient('wpbs_upgrader_legend_items_relationships');

