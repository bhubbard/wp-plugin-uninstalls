<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfwc_welcome_notice_dismissed');
delete_site_option('rfwc_welcome_notice_dismissed');
delete_option('rfwc_ticket_prefix');
delete_site_option('rfwc_ticket_prefix');
delete_option('rfwc_enable_skill_question');
delete_site_option('rfwc_enable_skill_question');
delete_option('rfwc_enable_free_entry');
delete_site_option('rfwc_enable_free_entry');
delete_option('rfwc_skill_question_pool');
delete_site_option('rfwc_skill_question_pool');
delete_option('rfwc_show_shop_countdown');
delete_site_option('rfwc_show_shop_countdown');
delete_option('rfwc_show_countdown');
delete_site_option('rfwc_show_countdown');
delete_option('rfwc_show_progress_bar');
delete_site_option('rfwc_show_progress_bar');
delete_option('rfwc_show_prize_value');
delete_site_option('rfwc_show_prize_value');
delete_option('rfwc_frontend_accent_color');
delete_site_option('rfwc_frontend_accent_color');
delete_option('rfwc_version');
delete_site_option('rfwc_version');
delete_option('rfwc_db_version');
delete_site_option('rfwc_db_version');
delete_option('rfwc_flush_rewrite_rules');
delete_site_option('rfwc_flush_rewrite_rules');
delete_option('rfwc_ticket_badge_text');
delete_site_option('rfwc_ticket_badge_text');
delete_option('rfwc_ticket_footer_text');
delete_site_option('rfwc_ticket_footer_text');
delete_option('rfwc_ticket_primary_color');
delete_site_option('rfwc_ticket_primary_color');
delete_option('rfwc_enable_gift_purchase');
delete_site_option('rfwc_enable_gift_purchase');
delete_option('rfwc_ticket_number_format');
delete_site_option('rfwc_ticket_number_format');
delete_option('rfwc_free_entry_text');
delete_site_option('rfwc_free_entry_text');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('rfwc_qr_code_size');
delete_site_option('rfwc_qr_code_size');
delete_option('rfwc_default_selection_method');
delete_site_option('rfwc_default_selection_method');
delete_option('rfwc_auto_generate_on_payment');
delete_site_option('rfwc_auto_generate_on_payment');
delete_option('rfwc_ticket_start_number');
delete_site_option('rfwc_ticket_start_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rfwc_ticket_meta_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rfwc_random_org_api_key');
delete_site_option('rfwc_random_org_api_key');
delete_option('rfwc_email_admin_draw_failed');
delete_site_option('rfwc_email_admin_draw_failed');
delete_option('rfwc_email_admin_winner');
delete_site_option('rfwc_email_admin_winner');
delete_option('rfwc_email_gift_notification');
delete_site_option('rfwc_email_gift_notification');
delete_option('rfwc_email_prize_claimed');
delete_site_option('rfwc_email_prize_claimed');
delete_option('rfwc_email_ticket_confirmation');
delete_site_option('rfwc_email_ticket_confirmation');
delete_option('rfwc_email_winner_notification');
delete_site_option('rfwc_email_winner_notification');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rfwc_admin_notice_%', '_site_transient_rfwc_admin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('rfwc_check_expired_raffles');
wp_clear_scheduled_hook('rfwc_auto_draw_raffle');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rfwc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rfwc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rfwc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rfwc_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rfwc_ticket_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rfwc_ticket_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rfwc_ticket_prefix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rfwc_ticket_prefix' ) );

