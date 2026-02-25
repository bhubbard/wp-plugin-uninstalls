<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b4y_plugin_setting_adresse');
delete_site_option('b4y_plugin_setting_adresse');
delete_option('b4y_plugin_setting_prod');
delete_site_option('b4y_plugin_setting_prod');
delete_option('b4y_plugin_setting_adresse_longitude');
delete_site_option('b4y_plugin_setting_adresse_longitude');
delete_option('b4y_plugin_setting_adresse_latitude');
delete_site_option('b4y_plugin_setting_adresse_latitude');
delete_option('b4y_plugin_setting_texte');
delete_site_option('b4y_plugin_setting_texte');
delete_option('b4y_plugin_setting_aide');
delete_site_option('b4y_plugin_setting_aide');
delete_option('b4y_plugin_setting_comm');
delete_site_option('b4y_plugin_setting_comm');
delete_option('b4y_plugin_setting_key');
delete_site_option('b4y_plugin_setting_key');
delete_option('b4y_plugin_setting_cats');
delete_site_option('b4y_plugin_setting_cats');
delete_option('b4y_plugin_setting_sender_name');
delete_site_option('b4y_plugin_setting_sender_name');
delete_option('b4y_plugin_setting_sender_phone');
delete_site_option('b4y_plugin_setting_sender_phone');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'b4y_send' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'b4y_send' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'b4y_send' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'b4y_send' ) );

