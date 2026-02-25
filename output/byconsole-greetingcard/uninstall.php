<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('byconsolecusgreeting_card_one_check_box');
delete_site_option('byconsolecusgreeting_card_one_check_box');
delete_option('byconsolecusgreeting_card_two_check_box');
delete_site_option('byconsolecusgreeting_card_two_check_box');
delete_option('byconsolecusgreeting_card_three_check_box');
delete_site_option('byconsolecusgreeting_card_three_check_box');
delete_option('byconsolecusgreeting_card_four_check_box');
delete_site_option('byconsolecusgreeting_card_four_check_box');
delete_option('byconsolecusgreeting_card_option_one_text');
delete_site_option('byconsolecusgreeting_card_option_one_text');
delete_option('byconsolecusgreeting_card_pdf_one');
delete_site_option('byconsolecusgreeting_card_pdf_one');
delete_option('byconsolecusgreeting_card_option_two_text');
delete_site_option('byconsolecusgreeting_card_option_two_text');
delete_option('byconsolecusgreeting_card_pdf_two');
delete_site_option('byconsolecusgreeting_card_pdf_two');
delete_option('byconsolecusgreeting_card_option_three_text');
delete_site_option('byconsolecusgreeting_card_option_three_text');
delete_option('byconsolecusgreeting_card_pdf_three');
delete_site_option('byconsolecusgreeting_card_pdf_three');
delete_option('byconsolecusgreeting_card_option_four_text');
delete_site_option('byconsolecusgreeting_card_option_four_text');
delete_option('byconsolecusgreeting_card_pdf_four');
delete_site_option('byconsolecusgreeting_card_pdf_four');
delete_option('byconsolecusgreeting_card_option_text');
delete_site_option('byconsolecusgreeting_card_option_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_byconsole_free_plugin_greeting_card_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_byconsole_free_plugin_greeting_card_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_byconsole_free_plugin_greeting_card_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_byconsole_free_plugin_greeting_card_link' ) );

