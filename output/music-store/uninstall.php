<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ms_affiliate_royale_active');
delete_site_option('ms_affiliate_royale_active');
delete_option('ms_affiliates_manager_active');
delete_site_option('ms_affiliates_manager_active');
delete_option('ms_mollie_settings');
delete_site_option('ms_mollie_settings');
delete_option('ms_square_settings');
delete_site_option('ms_square_settings');
delete_option('ms_song_permalink');
delete_site_option('ms_song_permalink');
delete_option('song_single.tpl.html');
delete_site_option('song_single.tpl.html');
delete_option('song_multiple.tpl.html');
delete_site_option('song_multiple.tpl.html');
delete_option('song.tpl.html');
delete_site_option('song.tpl.html');
delete_option('ms_custom_templates_active');
delete_site_option('ms_custom_templates_active');
delete_option('ms_paypal_email');
delete_site_option('ms_paypal_email');
delete_option('ms_items_page');
delete_site_option('ms_items_page');
delete_option('ms_main_page');
delete_site_option('ms_main_page');
delete_option('ms_has_been_configured');
delete_site_option('ms_has_been_configured');
delete_option('music_store_version_number');
delete_site_option('music_store_version_number');
delete_option('ms_woocommerce_integration');
delete_site_option('ms_woocommerce_integration');
delete_option('ms_prevent_cache');
delete_site_option('ms_prevent_cache');
delete_option('ms_filter_by_genre');
delete_site_option('ms_filter_by_genre');
delete_option('ms_filter_by_artist');
delete_site_option('ms_filter_by_artist');
delete_option('ms_filter_by_album');
delete_site_option('ms_filter_by_album');
delete_option('ms_search_taxonomy');
delete_site_option('ms_search_taxonomy');
delete_option('ms_items_page_selector');
delete_site_option('ms_items_page_selector');
delete_option('ms_friendly_url');
delete_site_option('ms_friendly_url');
delete_option('ms_layout');
delete_site_option('ms_layout');
delete_option('ms_popularity');
delete_site_option('ms_popularity');
delete_option('ms_player_style');
delete_site_option('ms_player_style');
delete_option('ms_pp_accept_zip');
delete_site_option('ms_pp_accept_zip');
delete_option('ms_pp_related_products');
delete_site_option('ms_pp_related_products');
delete_option('ms_pp_default_cover');
delete_site_option('ms_pp_default_cover');
delete_option('ms_pp_cover_size');
delete_site_option('ms_pp_cover_size');
delete_option('ms_pp_related_products_number');
delete_site_option('ms_pp_related_products_number');
delete_option('ms_pp_related_products_columns');
delete_site_option('ms_pp_related_products_columns');
delete_option('ms_pp_related_products_by');
delete_site_option('ms_pp_related_products_by');
delete_option('ms_paypal_button');
delete_site_option('ms_paypal_button');
delete_option('ms_hide_download_link_for_price_in_blank');
delete_site_option('ms_hide_download_link_for_price_in_blank');
delete_option('ms_paypal_currency');
delete_site_option('ms_paypal_currency');
delete_option('ms_paypal_currency_symbol');
delete_site_option('ms_paypal_currency_symbol');
delete_option('ms_paypal_language');
delete_site_option('ms_paypal_language');
delete_option('ms_paypal_enabled');
delete_site_option('ms_paypal_enabled');
delete_option('ms_paypal_sandbox');
delete_site_option('ms_paypal_sandbox');
delete_option('ms_tax');
delete_site_option('ms_tax');
delete_option('ms_debug_payment');
delete_site_option('ms_debug_payment');
delete_option('ms_notification_from_email');
delete_site_option('ms_notification_from_email');
delete_option('ms_notification_to_email');
delete_site_option('ms_notification_to_email');
delete_option('ms_notification_to_payer_subject');
delete_site_option('ms_notification_to_payer_subject');
delete_option('ms_notification_to_payer_message');
delete_site_option('ms_notification_to_payer_message');
delete_option('ms_notification_to_seller_subject');
delete_site_option('ms_notification_to_seller_subject');
delete_option('ms_notification_to_seller_message');
delete_site_option('ms_notification_to_seller_message');
delete_option('ms_disable_download_links');
delete_site_option('ms_disable_download_links');
delete_option('ms_old_download_link');
delete_site_option('ms_old_download_link');
delete_option('ms_downloads_number');
delete_site_option('ms_downloads_number');
delete_option('ms_safe_download');
delete_site_option('ms_safe_download');
delete_option('ms_play_all');
delete_site_option('ms_play_all');
delete_option('ms_preload');
delete_site_option('ms_preload');
delete_option('ms_social_buttons');
delete_site_option('ms_social_buttons');
delete_option('ms_facebook_app_id');
delete_site_option('ms_facebook_app_id');
delete_option('ms_download_link_for_registered_only');
delete_site_option('ms_download_link_for_registered_only');
delete_option('ms_buy_button_for_registered_only');
delete_site_option('ms_buy_button_for_registered_only');
delete_option('ms_license_for_regular');
delete_site_option('ms_license_for_regular');
delete_option('ms_license_for_free');
delete_site_option('ms_license_for_free');
delete_option('ms_troubleshoot_no_ob');
delete_site_option('ms_troubleshoot_no_ob');
delete_option('ms_troubleshoot_no_dl');
delete_site_option('ms_troubleshoot_no_dl');
delete_option('ms_troubleshoot_email_address');
delete_site_option('ms_troubleshoot_email_address');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_permalink' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ms_genre_permalink');
delete_site_option('ms_genre_permalink');
delete_option('ms_artist_permalink');
delete_site_option('ms_artist_permalink');
delete_option('ms_album_permalink');
delete_site_option('ms_album_permalink');
delete_option('ms_paypal_first_time_enable');
delete_site_option('ms_paypal_first_time_enable');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('music_store_available_add_ons');
delete_site_transient('music_store_available_add_ons');

