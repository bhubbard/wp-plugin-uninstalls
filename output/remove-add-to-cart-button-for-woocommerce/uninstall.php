<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ratcw_disable_cart_page');
delete_site_option('ratcw_disable_cart_page');
delete_option('ratcw_disable_checkout_page');
delete_site_option('ratcw_disable_checkout_page');
delete_option('ratcw_add_to_cart_message_text_color');
delete_site_option('ratcw_add_to_cart_message_text_color');
delete_option('ratcw_add_to_cart_message_background_color');
delete_site_option('ratcw_add_to_cart_message_background_color');
delete_option('ratcw_add_to_cart_message_text_alignment');
delete_site_option('ratcw_add_to_cart_message_text_alignment');
delete_option('ratcw_add_to_cart_message_text_padding');
delete_site_option('ratcw_add_to_cart_message_text_padding');
delete_option('ratcw_add_to_cart_message_text_font_size');
delete_site_option('ratcw_add_to_cart_message_text_font_size');
delete_option('ratcw_login_reg_page_url');
delete_site_option('ratcw_login_reg_page_url');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('ratcw_login_reg_button_text');
delete_site_option('ratcw_login_reg_button_text');
delete_option('ratcw_price_message_text_color');
delete_site_option('ratcw_price_message_text_color');
delete_option('ratcw_price_message_background_color');
delete_site_option('ratcw_price_message_background_color');
delete_option('ratcw_price_message_text_alignment');
delete_site_option('ratcw_price_message_text_alignment');
delete_option('ratcw_price_message_text_padding');
delete_site_option('ratcw_price_message_text_padding');
delete_option('ratcw_price_message_text_font_size');
delete_site_option('ratcw_price_message_text_font_size');
delete_option('ratcw_cart_checkout_redirect_url');
delete_site_option('ratcw_cart_checkout_redirect_url');
delete_option('ratcw_product_ofs_message');
delete_site_option('ratcw_product_ofs_message');
delete_option('ratcw_product_obo_message');
delete_site_option('ratcw_product_obo_message');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_remove_cart_button_for' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_remove_cart_button_for' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_remove_cart_button_for' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_remove_cart_button_for' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_show_login_btn_when_cart_button_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_show_login_btn_when_cart_button_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_show_login_btn_when_cart_button_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_show_login_btn_when_cart_button_hidden' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_msg_instead_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_msg_instead_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_msg_instead_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_msg_instead_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_msg_instead_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_msg_instead_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_msg_instead_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_msg_instead_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_show_price_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_show_price_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_show_price_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_show_price_on' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratcw_igne_noti' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratcw_igne_noti' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratcw_igne_noti' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratcw_igne_noti' ) );

