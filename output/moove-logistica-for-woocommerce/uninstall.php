<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('txtClientNumber');
delete_site_option('txtClientNumber');
delete_option('txtDispatchDate');
delete_site_option('txtDispatchDate');
delete_option('txtWeightInGrams');
delete_site_option('txtWeightInGrams');
delete_option('txtWidthInCentimeters');
delete_site_option('txtWidthInCentimeters');
delete_option('txtLengthInCentimeters');
delete_site_option('txtLengthInCentimeters');
delete_option('txtHeightInCentimeters');
delete_site_option('txtHeightInCentimeters');
delete_option('txtNoteOne');
delete_site_option('txtNoteOne');
delete_option('txtNoteTwo');
delete_site_option('txtNoteTwo');
delete_option('txtRecipientCharge');
delete_site_option('txtRecipientCharge');
delete_option('txtVolumesNumber');
delete_site_option('txtVolumesNumber');
delete_option('txtCountry');
delete_site_option('txtCountry');
delete_option('txtZipCode');
delete_site_option('txtZipCode');
delete_option('txtAddress');
delete_site_option('txtAddress');
delete_option('txtCity');
delete_site_option('txtCity');
delete_option('txtState');
delete_site_option('txtState');
delete_option('txtContactName');
delete_site_option('txtContactName');
delete_option('txtPhone');
delete_site_option('txtPhone');
delete_option('txtEmail');
delete_site_option('txtEmail');
delete_option('txtAdditionalServices');
delete_site_option('txtAdditionalServices');
delete_option('txtStartDate');
delete_site_option('txtStartDate');
delete_option('txtEndDate');
delete_site_option('txtEndDate');
delete_option('ddlStatus');
delete_site_option('ddlStatus');
delete_option('txtApiKey');
delete_site_option('txtApiKey');
delete_option('plugin_options');
delete_site_option('plugin_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_user' ) );

