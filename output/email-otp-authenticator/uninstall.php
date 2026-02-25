<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailotpauthn_templatesdata');
delete_site_option('emailotpauthn_templatesdata');
delete_option('emailotpauthn_extremedemo');
delete_site_option('emailotpauthn_extremedemo');
delete_option('emailotpauthn_isaddonfilplcd');
delete_site_option('emailotpauthn_isaddonfilplcd');
delete_option('emailotpauthn_enable');
delete_site_option('emailotpauthn_enable');
delete_option('emailotpauthn_useupgrdfiture');
delete_site_option('emailotpauthn_useupgrdfiture');
delete_option('emailotpauthn_email_subject');
delete_site_option('emailotpauthn_email_subject');
delete_option('emailotpauthn_email_body');
delete_site_option('emailotpauthn_email_body');
delete_option('emailotpauthn_dfltextrnalcss');
delete_site_option('emailotpauthn_dfltextrnalcss');
delete_option('emailotpauthn_mdfdextrnalcss');
delete_site_option('emailotpauthn_mdfdextrnalcss');
delete_option('emailotpauthn_message');
delete_site_option('emailotpauthn_message');
delete_option('emailotpauthn_settingsdetls');
delete_site_option('emailotpauthn_settingsdetls');
delete_option('emailotpauthn_formnoticentxt');
delete_site_option('emailotpauthn_formnoticentxt');
delete_option('emailotpauthn_blockedemails');
delete_site_option('emailotpauthn_blockedemails');
delete_option('emailotpauthn_allowedemails');
delete_site_option('emailotpauthn_allowedemails');
delete_option('emailotpauthn_blockedmailid');
delete_site_option('emailotpauthn_blockedmailid');
delete_option('emailotpauthn_emailsettings');
delete_site_option('emailotpauthn_emailsettings');
delete_option('emailotpauthn_firelimit');
delete_site_option('emailotpauthn_firelimit');
delete_option('emailotpauthn_duralimit');
delete_site_option('emailotpauthn_duralimit');
delete_option('emailotpauthn_validfor');
delete_site_option('emailotpauthn_validfor');
delete_option('emailotpauthn_cleanaftrdays');
delete_site_option('emailotpauthn_cleanaftrdays');
delete_option('emailotpauthn_lognatmptlimit');
delete_site_option('emailotpauthn_lognatmptlimit');
delete_option('emailotpauthn_rgstratmptlmit');
delete_site_option('emailotpauthn_rgstratmptlmit');
delete_option('emailotpauthn_useratmptlimit');
delete_site_option('emailotpauthn_useratmptlimit');
delete_option('emailotpauthn_tokenvlidfrmbr');
delete_site_option('emailotpauthn_tokenvlidfrmbr');
delete_option('emailotpauthn_guestatmptlmit');
delete_site_option('emailotpauthn_guestatmptlmit');
delete_option('emailotpauthn_tokenvlidfrgst');
delete_site_option('emailotpauthn_tokenvlidfrgst');
delete_option('emailotpauthn_isactvfrmmail');
delete_site_option('emailotpauthn_isactvfrmmail');
delete_option('emailotpauthn_mmbrrjtrdcturl');
delete_site_option('emailotpauthn_mmbrrjtrdcturl');
delete_option('emailotpauthn_gustrjtrdcturl');
delete_site_option('emailotpauthn_gustrjtrdcturl');
delete_option('emailotpauthn_mmbrvrfrdcturl');
delete_site_option('emailotpauthn_mmbrvrfrdcturl');
delete_option('emailotpauthn_gustvrfrdcturl');
delete_site_option('emailotpauthn_gustvrfrdcturl');

// Delete Transients
delete_transient('is_eotpa_data_eximported');
delete_site_transient('is_eotpa_data_eximported');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_emailotpauthn_%', '_site_transient_emailotpauthn_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_data_attribute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_data_attribute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_data_attribute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_data_attribute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'emilotpauthn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'emilotpauthn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'emilotpauthn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'emilotpauthn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'emilotpatmpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'emilotpatmpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'emilotpatmpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'emilotpatmpt' ) );

