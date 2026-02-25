<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wemail_site_connection_notice');
delete_site_option('wemail_site_connection_notice');
delete_option('wemail_api_key');
delete_site_option('wemail_api_key');
delete_option('wemail_review_notice');
delete_site_option('wemail_review_notice');
delete_option('wemail_installed_time');
delete_site_option('wemail_installed_time');
delete_option('wemail_sent_campaign_count');
delete_site_option('wemail_sent_campaign_count');
delete_option('wemail_response_for_review_notice');
delete_site_option('wemail_response_for_review_notice');
delete_option('wemail_site_slug');
delete_site_option('wemail_site_slug');
delete_option('wemail_accessible_roles');
delete_site_option('wemail_accessible_roles');
delete_option('wemail_form_integration_caldera_forms');
delete_site_option('wemail_form_integration_caldera_forms');
delete_option('wemail_form_integration_contact_form_7');
delete_site_option('wemail_form_integration_contact_form_7');
delete_option('wemail_form_integration_elementor_forms');
delete_site_option('wemail_form_integration_elementor_forms');
delete_option('wemail_form_integration_everest_forms');
delete_site_option('wemail_form_integration_everest_forms');
delete_option('wemail_form_integration_fluent_forms');
delete_site_option('wemail_form_integration_fluent_forms');
delete_option('wemail_form_integration_formidable_forms');
delete_site_option('wemail_form_integration_formidable_forms');
delete_option('wemail_form_integration_forminator_forms');
delete_site_option('wemail_form_integration_forminator_forms');
delete_option('wemail_form_integration_gravity_forms');
delete_site_option('wemail_form_integration_gravity_forms');
delete_option('wemail_form_integration_happy_forms');
delete_site_option('wemail_form_integration_happy_forms');
delete_option('ninja_forms_version');
delete_site_option('ninja_forms_version');
delete_option('wemail_form_integration_ninja_forms');
delete_site_option('wemail_form_integration_ninja_forms');
delete_option('wemail_form_integration_popup_builder');
delete_site_option('wemail_form_integration_popup_builder');
delete_option('wemail_form_integration_weforms');
delete_site_option('wemail_form_integration_weforms');
delete_option('wemail_form_integration_wpforms');
delete_site_option('wemail_form_integration_wpforms');
delete_option('wemail_transactional_emails');
delete_site_option('wemail_transactional_emails');
delete_option('wemail_affiliatewp_enabled');
delete_site_option('wemail_affiliatewp_enabled');
delete_option('wemail_edd_integrated');
delete_site_option('wemail_edd_integrated');
delete_option('wemail_is_edd_synced');
delete_site_option('wemail_is_edd_synced');
delete_option('wemail_woocommerce_integrated');
delete_site_option('wemail_woocommerce_integrated');
delete_option('wemail_is_woocommerce_synced');
delete_site_option('wemail_is_woocommerce_synced');
delete_option('wemail_sync_subscriber_erp_contacts');
delete_site_option('wemail_sync_subscriber_erp_contacts');
delete_option('wemail_sync_subscriber_wp');
delete_site_option('wemail_sync_subscriber_wp');
delete_option('wemail_general');
delete_site_option('wemail_general');
delete_option('wemail_version');
delete_site_option('wemail_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wemail_activation_redirect');
delete_site_transient('wemail_activation_redirect');
delete_transient('wemail_sent_campaign_count');
delete_site_transient('wemail_sent_campaign_count');
delete_transient('wemail_validate_me_key');
delete_site_transient('wemail_validate_me_key');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wemail_disable_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wemail_disable_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wemail_disable_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wemail_disable_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wemail_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wemail_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wemail_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wemail_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wemail_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wemail_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wemail_user_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wemail_user_data' ) );

