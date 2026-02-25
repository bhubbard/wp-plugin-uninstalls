<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctdb_done_redirect');
delete_site_option('ctdb_done_redirect');
delete_option('ctdb_review_notice_dismissed');
delete_site_option('ctdb_review_notice_dismissed');
delete_option('ctdb_pro_notice_dismissed');
delete_site_option('ctdb_pro_notice_dismissed');
delete_option('ctdb_review_plugin_notice_dismissed');
delete_site_option('ctdb_review_plugin_notice_dismissed');
delete_option('ctdb_install_date');
delete_site_option('ctdb_install_date');
delete_option('ctdb_database_version');
delete_site_option('ctdb_database_version');
delete_option('ctdb_updated_from_version');
delete_site_option('ctdb_updated_from_version');
delete_option('ctdb_upgrade_settings');
delete_site_option('ctdb_upgrade_settings');
delete_option('ctdb_user_settings');
delete_site_option('ctdb_user_settings');
delete_option('ctdb_options_settings');
delete_site_option('ctdb_options_settings');
delete_option('ctdb_design_settings');
delete_site_option('ctdb_design_settings');
delete_option('ctdb_nag_dismissed');
delete_site_option('ctdb_nag_dismissed');
delete_option('ctdb_categories_settings');
delete_site_option('ctdb_categories_settings');
delete_option('ctdb_recaptcha_settings');
delete_site_option('ctdb_recaptcha_settings');
delete_option('ctdb_wizard_done');
delete_site_option('ctdb_wizard_done');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activate_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctdb_uniqid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctdb_uniqid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctdb_uniqid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctdb_uniqid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctdb_author_opted_out' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctdb_author_opted_out' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctdb_author_opted_out' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctdb_author_opted_out' ) );

