<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bsk_pdf_manager_open_target');
delete_site_option('_bsk_pdf_manager_open_target');
delete_option('_bsk_pdf_manager_category_list_has_title');
delete_site_option('_bsk_pdf_manager_category_list_has_title');
delete_option('_bsk_pdf_manager_pdf_order_by_');
delete_site_option('_bsk_pdf_manager_pdf_order_by_');
delete_option('_bsk_pdf_manager_pdf_order_');
delete_site_option('_bsk_pdf_manager_pdf_order_');
delete_option('_bsk_pdf_manager_db_ver_');
delete_site_option('_bsk_pdf_manager_db_ver_');
delete_option('_bsk_pdf_manager_rels_done_');
delete_site_option('_bsk_pdf_manager_rels_done_');
delete_option('_bsk_pdf_manager_free_to_pro_done_');
delete_site_option('_bsk_pdf_manager_free_to_pro_done_');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_51' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_15' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_31' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_32' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_33' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_34' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_id_16' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('bsk_pdfm_free_schedule_check_promote_weekly');
wp_clear_scheduled_hook('bsk_pdfm_free_schedule_check_promote_daily');

