<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qrc_composer_settings');
delete_site_option('qrc_composer_settings');
delete_option('qrc_composer_do_activation_edirect');
delete_site_option('qrc_composer_do_activation_edirect');
delete_option('qrc_autogenerate');
delete_site_option('qrc_autogenerate');
delete_option('qrc_admin_integrate');
delete_site_option('qrc_admin_integrate');
delete_option('qrc_custom_link_generator');
delete_site_option('qrc_custom_link_generator');
delete_option('qrc_vcard_generator');
delete_site_option('qrc_vcard_generator');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qrc_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qrc_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qrc_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qrc_metabox' ) );

