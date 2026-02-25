<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('megamenu_dismissed_notices');
delete_site_option('megamenu_dismissed_notices');
delete_option('megamenu_install_date');
delete_site_option('megamenu_install_date');
delete_option('megamenu_settings');
delete_site_option('megamenu_settings');
delete_option('megamenu_failed_to_write_css_to_filesystem');
delete_site_option('megamenu_failed_to_write_css_to_filesystem');
delete_option('megamenu_locations');
delete_site_option('megamenu_locations');
delete_option('megamenu_initial_version');
delete_site_option('megamenu_initial_version');
delete_option('wbcr_clearfy_cache_options');
delete_site_option('wbcr_clearfy_cache_options');
delete_option('megamenu_toggle_blocks');
delete_site_option('megamenu_toggle_blocks');
delete_option('megamenu_version');
delete_site_option('megamenu_version');
delete_option('megamenu_themes_last_updated');
delete_site_option('megamenu_themes_last_updated');
delete_option('megamenu_multisite_share_themes');
delete_site_option('megamenu_multisite_share_themes');
delete_option('megamenu_css_last_updated');
delete_site_option('megamenu_css_last_updated');
delete_option('megamenu_css_version');
delete_site_option('megamenu_css_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('megamenu_themes');
delete_site_option('megamenu_themes');

// Delete Transients
delete_transient('megamenu_css');
delete_site_transient('megamenu_css');
delete_transient('megamenu_css_version');
delete_site_transient('megamenu_css_version');
delete_transient('megamenu_css_last_updated');
delete_site_transient('megamenu_css_last_updated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_megamenu_css_%', '_site_transient_megamenu_css_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );

