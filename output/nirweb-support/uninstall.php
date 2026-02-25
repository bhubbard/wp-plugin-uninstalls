<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('size_of_file_wpyartik');
delete_site_option('size_of_file_wpyartik');
delete_option('display_icon_send_ticket');
delete_site_option('display_icon_send_ticket');
delete_option('select_page_ticket');
delete_site_option('select_page_ticket');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('position_icon_nirweb_ticket_front');
delete_site_option('position_icon_nirweb_ticket_front');
delete_option('icon_nirweb_ticket_front');
delete_site_option('icon_nirweb_ticket_front');
delete_option('nadurl');
delete_site_option('nadurl');
delete_option('mojaz_file_upload_user_wpyar');
delete_site_option('mojaz_file_upload_user_wpyar');
delete_option('template_send_ticket_email');
delete_site_option('template_send_ticket_email');
delete_option('active_send_mail_to_poshtiban');
delete_site_option('active_send_mail_to_poshtiban');
delete_option('subject_mail_poshtiban_new');
delete_site_option('subject_mail_poshtiban_new');
delete_option('poshtiban_text_email_send');
delete_site_option('poshtiban_text_email_send');
delete_option('subject_mail_poshtiban_answer');
delete_site_option('subject_mail_poshtiban_answer');
delete_option('poshtiban_text_email_send_answer');
delete_site_option('poshtiban_text_email_send_answer');
delete_option('require_procut_user_wpyar');
delete_site_option('require_procut_user_wpyar');
delete_option('text_top_send_mail_nirweb_ticket');
delete_site_option('text_top_send_mail_nirweb_ticket');
delete_option('active_send_mail_to_user');
delete_site_option('active_send_mail_to_user');
delete_option('subject_mail_user_new');
delete_site_option('subject_mail_user_new');
delete_option('user_text_email_send');
delete_site_option('user_text_email_send');
delete_option('subject_mail_user_answer');
delete_site_option('subject_mail_user_answer');
delete_option('user_text_email_send_answer');
delete_site_option('user_text_email_send_answer');
delete_option('nirweb_ticket_perfix');
delete_site_option('nirweb_ticket_perfix');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nirweb_ads_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nirweb_ads_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nirweb_ads_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nirweb_ads_ticket' ) );

