<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mideal_faq_setting_email');
delete_site_option('mideal_faq_setting_email');
delete_option('mideal_faq_setting_email2');
delete_site_option('mideal_faq_setting_email2');
delete_option('mideal_faq_setting_avatar_smallsize');
delete_site_option('mideal_faq_setting_avatar_smallsize');
delete_option('mideal_faq_setting_dont_show_label');
delete_site_option('mideal_faq_setting_dont_show_label');
delete_option('mideal_faq_setting_dont_connect_bootstrap');
delete_site_option('mideal_faq_setting_dont_connect_bootstrap');
delete_option('mideal_faq_setting_recaptcha');
delete_site_option('mideal_faq_setting_recaptcha');
delete_option('mideal_faq_setting_recaptcha_key');
delete_site_option('mideal_faq_setting_recaptcha_key');
delete_option('mideal_faq_setting_recaptcha_key_secret');
delete_site_option('mideal_faq_setting_recaptcha_key_secret');
delete_option('mideal_faq_setting_answer_name');
delete_site_option('mideal_faq_setting_answer_name');
delete_option('mideal_faq_setting_pagination_number');
delete_site_option('mideal_faq_setting_pagination_number');
delete_option('mideal_faq_setting_answer_image');
delete_site_option('mideal_faq_setting_answer_image');
delete_option('mideal_faq_setting_question_background');
delete_site_option('mideal_faq_setting_question_background');
delete_option('mideal_faq_setting_question_color_text');
delete_site_option('mideal_faq_setting_question_color_text');
delete_option('mideal_faq_setting_answer_background');
delete_site_option('mideal_faq_setting_answer_background');
delete_option('mideal_faq_setting_answer_color_text');
delete_site_option('mideal_faq_setting_answer_color_text');
delete_option('mideal_faq_setting_button_color_text');
delete_site_option('mideal_faq_setting_button_color_text');
delete_option('mideal_faq_setting_button_background');
delete_site_option('mideal_faq_setting_button_background');
delete_option('mideal_faq_setting_button_big_size');
delete_site_option('mideal_faq_setting_button_big_size');
delete_option('mideal_faq_setting_pagination_color');
delete_site_option('mideal_faq_setting_pagination_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mideal_faq_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mideal_faq_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mideal_faq_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mideal_faq_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mideal_faq_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mideal_faq_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mideal_faq_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mideal_faq_email' ) );

