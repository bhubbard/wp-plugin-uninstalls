<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pojo_a11y_toolbar');
delete_site_option('pojo_a11y_toolbar');
delete_option('pojo_a11y_focusable');
delete_site_option('pojo_a11y_focusable');
delete_option('pojo_a11y_remove_link_target');
delete_site_option('pojo_a11y_remove_link_target');
delete_option('pojo_a11y_add_role_links');
delete_site_option('pojo_a11y_add_role_links');
delete_option('pojo_a11y_save');
delete_site_option('pojo_a11y_save');
delete_option('pojo_a11y_save_expiration');
delete_site_option('pojo_a11y_save_expiration');
delete_option('pojo_a11y_skip_to_content_link');
delete_site_option('pojo_a11y_skip_to_content_link');
delete_option('pojo_a11y_skip_to_content_link_element_id');
delete_site_option('pojo_a11y_skip_to_content_link_element_id');
delete_option('pojo_a11y_toolbar_button_sitemap_link');
delete_site_option('pojo_a11y_toolbar_button_sitemap_link');
delete_option('pojo_a11y_toolbar_button_help_link');
delete_site_option('pojo_a11y_toolbar_button_help_link');
delete_option('pojo_a11y_toolbar_button_feedback_link');
delete_site_option('pojo_a11y_toolbar_button_feedback_link');
delete_option('ea11y_subscription_id');
delete_site_option('ea11y_subscription_id');
delete_option('ea11y_accessibility_statement_data');
delete_site_option('ea11y_accessibility_statement_data');
delete_option('ea11y_widget_icon_settings');
delete_site_option('ea11y_widget_icon_settings');
delete_option('elementor_connect_site_key');
delete_site_option('elementor_connect_site_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%welcome_screen_completed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%dismiss_connect_alert' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%editor_update_notification_dismissed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('elementor_ea11y_campaign');
delete_site_transient('elementor_ea11y_campaign');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_a11y_elementor_install_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_a11y_elementor_install_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_a11y_elementor_install_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_a11y_elementor_install_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ea11y-scanner-heading-issues-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ea11y-scanner-heading-issues-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ea11y-scanner-heading-issues-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ea11y-scanner-heading-issues-dismissed' ) );

