<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ets_load_more_button');
delete_site_option('ets_load_more_button');
delete_option('ets_product_q_qa_list_length');
delete_site_option('ets_product_q_qa_list_length');
delete_option('ets_load_more_button_name');
delete_site_option('ets_load_more_button_name');
delete_option('ets_product_qa_paging_type');
delete_site_option('ets_product_qa_paging_type');
delete_option('ets_qa_approve');
delete_site_option('ets_qa_approve');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ets_question_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ets_question_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ets_question_answer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ets_question_answer' ) );

