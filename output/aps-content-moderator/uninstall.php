<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aps-content-moderator-cm-settings-data_access_key');
delete_site_option('aps-content-moderator-cm-settings-data_access_key');
delete_option('aps-content-moderator-cm-settings-data_access_url');
delete_site_option('aps-content-moderator-cm-settings-data_access_url');
delete_option('aps-content-moderator-cm-settings_category1-value');
delete_site_option('aps-content-moderator-cm-settings_category1-value');
delete_option('aps-content-moderator-cm-settings_category2-value');
delete_site_option('aps-content-moderator-cm-settings_category2-value');
delete_option('aps-content-moderator-cm-settings_category3-value');
delete_site_option('aps-content-moderator-cm-settings_category3-value');
delete_option('aps-content-moderator-cm-settings_ignore-pii');
delete_site_option('aps-content-moderator-cm-settings_ignore-pii');
delete_option('aps-content-moderator-cm-settings_comment-threshold');
delete_site_option('aps-content-moderator-cm-settings_comment-threshold');
delete_option('aps-content-moderator-cm-settings_comment-max-length-note');
delete_site_option('aps-content-moderator-cm-settings_comment-max-length-note');
delete_option('aps-content-moderator-cm-settings_comment-field-id');
delete_site_option('aps-content-moderator-cm-settings_comment-field-id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CmTextResult' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CmTextResult' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CmTextResult' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CmTextResult' ) );

