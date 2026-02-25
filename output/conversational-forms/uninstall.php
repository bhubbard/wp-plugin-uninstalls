<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wfb_clippy_first');
delete_site_option('_wfb_clippy_first');
delete_option('_qcformbuilder_forms_styleincludes');
delete_site_option('_qcformbuilder_forms_styleincludes');
delete_option('_qcformbuilder_forms_entry_perpage');
delete_site_option('_qcformbuilder_forms_entry_perpage');
delete_option('qcformbuilder_forms_api_token_secret');
delete_site_option('qcformbuilder_forms_api_token_secret');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_qcformbuilder_forms_widget');
delete_site_option('widget_qcformbuilder_forms_widget');
delete_option('WFB_DB');
delete_site_option('WFB_DB');
delete_option('_qcformbuilderforms_lastupdate');
delete_site_option('_qcformbuilderforms_lastupdate');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('_qcformbuilder_forms_tracking_allowed');
delete_site_option('_qcformbuilder_forms_tracking_allowed');
delete_option('_qcformbuilder_forms');
delete_site_option('_qcformbuilder_forms');
delete_option('_qcformbuilder_forms_forms');
delete_site_option('_qcformbuilder_forms_forms');
delete_option('qlcd_wp_chatbot_admin_email');
delete_site_option('qlcd_wp_chatbot_admin_email');
delete_option('qlcd_wp_chatbot_conversation_details');
delete_site_option('qlcd_wp_chatbot_conversation_details');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('qcformbuilder_forms_tracking_send_rows');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wfb_pointer_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wfb_pointer_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wfb_pointer_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wfb_pointer_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcformbuilder_forms_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcformbuilder_forms_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcformbuilder_forms_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcformbuilder_forms_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wfb_pointer_add_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wfb_pointer_add_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wfb_pointer_add_element' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wfb_pointer_add_element' ) );

