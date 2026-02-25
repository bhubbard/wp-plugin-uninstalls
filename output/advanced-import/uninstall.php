<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('advanced_import_settings_options');
delete_site_option('advanced_import_settings_options');
delete_option('advanced_import_reset_notice');
delete_site_option('advanced_import_reset_notice');

// Delete Transients
delete_transient('delayed_posts');
delete_site_transient('delayed_posts');
delete_transient('imported_term_ids');
delete_site_transient('imported_term_ids');
delete_transient('imported_post_ids');
delete_site_transient('imported_post_ids');
delete_transient('post_orphans');
delete_site_transient('post_orphans');
delete_transient('content.json');
delete_site_transient('content.json');
delete_transient('widgets.json');
delete_site_transient('widgets.json');
delete_transient('options.json');
delete_site_transient('options.json');
delete_transient('adi_elementor_data_posts');
delete_site_transient('adi_elementor_data_posts');

// Clear Cron Jobs
wp_clear_scheduled_hook('advanced_import_weekly_scheduled_events');
wp_clear_scheduled_hook('advanced_import_daily_scheduled_events');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

