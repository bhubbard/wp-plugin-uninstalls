<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orgseries_grouping_version');
delete_site_option('orgseries_grouping_version');
delete_option('orgseries_grouping_import_completed');
delete_site_option('orgseries_grouping_import_completed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'orgser_grp_upgrade_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('org_series_options');
delete_site_option('org_series_options');
delete_option('pp_series_taxonomy_slug');
delete_site_option('pp_series_taxonomy_slug');
delete_option('pps_post_list_box_defaults_created');
delete_site_option('pps_post_list_box_defaults_created');
delete_option('pps_post_navigation_defaults_created');
delete_site_option('pps_post_navigation_defaults_created');
delete_option('pps_post_navigation_default_id');
delete_site_option('pps_post_navigation_default_id');
delete_option('im_unpublished_series');
delete_site_option('im_unpublished_series');
delete_option('im_published_series');
delete_site_option('im_published_series');
delete_option('orgseries_plugin_activation_errors');
delete_site_option('orgseries_plugin_activation_errors');
delete_option('orgseries_install_key');
delete_site_option('orgseries_install_key');
delete_option('pp_series_2_7_1_upgraded');
delete_site_option('pp_series_2_7_1_upgraded');
delete_option('pp_series_2_8_0_upgraded');
delete_site_option('pp_series_2_8_0_upgraded');
delete_option('pp_series_2_10_0_upgraded');
delete_site_option('pp_series_2_10_0_upgraded');
delete_option('pp_series_2_10_0_1_upgraded');
delete_site_option('pp_series_2_10_0_1_upgraded');
delete_option('pp_series_2_11_1_upgraded');
delete_site_option('pp_series_2_11_1_upgraded');
delete_option('series_icon_path');
delete_site_option('series_icon_path');
delete_option('series_icon_url');
delete_site_option('series_icon_url');
delete_option('series_icon_filetypes');
delete_site_option('series_icon_filetypes');
delete_option('publishpress_multi_series_supported');
delete_site_option('publishpress_multi_series_supported');
delete_option('orgseries_update_message');
delete_site_option('orgseries_update_message');
delete_option('os_multi_import');
delete_site_option('os_multi_import');
delete_option('org_series_version');
delete_site_option('org_series_version');
delete_option('orgseries_version');
delete_site_option('orgseries_version');
delete_option('org_series_oldversion');
delete_site_option('org_series_oldversion');
delete_option('series_has_been_fixed');
delete_site_option('series_has_been_fixed');
delete_option('_split_terms');
delete_site_option('_split_terms');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('org_series_is_initialized');
delete_site_option('org_series_is_initialized');
delete_option('orgSeries_latest_series_widget');
delete_site_option('orgSeries_latest_series_widget');
delete_option('orgSeries_widget');
delete_site_option('orgSeries_widget');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%layout_meta_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%layout_meta_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%layout_meta_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%layout_meta_value' ) );

