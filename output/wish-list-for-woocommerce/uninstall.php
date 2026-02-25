<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_wl_enabled');
delete_site_option('alg_wc_wl_enabled');
delete_option('alg_wc_wl_multiple_wishlist_enabled');
delete_site_option('alg_wc_wl_multiple_wishlist_enabled');
delete_option('alg_wc_wl_style_wish_list_multiple_tab_font_color');
delete_site_option('alg_wc_wl_style_wish_list_multiple_tab_font_color');
delete_option('alg_wc_wl_style_wish_list_multiple_tab_bg_color');
delete_site_option('alg_wc_wl_style_wish_list_multiple_tab_bg_color');
delete_option('alg_wc_wl_style_wish_list_multiple_tab_active_font_color');
delete_site_option('alg_wc_wl_style_wish_list_multiple_tab_active_font_color');
delete_option('alg_wc_wl_style_wish_list_multiple_tab_separator_color');
delete_site_option('alg_wc_wl_style_wish_list_multiple_tab_separator_color');
delete_option('alg_wc_wl_style_wish_list_multiple_tab_active_bg_color');
delete_site_option('alg_wc_wl_style_wish_list_multiple_tab_active_bg_color');
delete_option('alg_wish_list_version');
delete_site_option('alg_wish_list_version');
delete_option('alg_wc_wl_fontawesome_url');
delete_site_option('alg_wc_wl_fontawesome_url');
delete_option('alg_wc_wl_responsiveness_max_width');
delete_site_option('alg_wc_wl_responsiveness_max_width');
delete_option('alg_wc_wl_responsiveness_max_height');
delete_site_option('alg_wc_wl_responsiveness_max_height');
delete_option('alg_wc_wl_responsiveness_evaluation_method');
delete_site_option('alg_wc_wl_responsiveness_evaluation_method');
delete_option('alg_wc_wl_default_js_toggle_events');
delete_site_option('alg_wc_wl_default_js_toggle_events');
delete_option('alg_wc_wl_mobile_js_toggle_events');
delete_site_option('alg_wc_wl_mobile_js_toggle_events');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('alg_wc_wl_texts_default_wishlist');
delete_site_option('alg_wc_wl_texts_default_wishlist');
delete_option('alg_wc_wl_remove_if_added_to_cart');
delete_site_option('alg_wc_wl_remove_if_added_to_cart');
delete_option('alg_wc_wl_the7_ti_wishlist_replace_shortcode');
delete_site_option('alg_wc_wl_the7_ti_wishlist_replace_shortcode');
delete_option('alg_wc_wl_thumb_btn_guide_img_selector');
delete_site_option('alg_wc_wl_thumb_btn_guide_img_selector');
delete_option('alg_wc_wl_style_wish_list_t_alignment_mobile');
delete_site_option('alg_wc_wl_style_wish_list_t_alignment_mobile');
delete_option('alg_wc_wl_social_email_subject_default_text');
delete_site_option('alg_wc_wl_social_email_subject_default_text');
delete_option('alg_wc_wl_sc_toggle_item_btn');
delete_site_option('alg_wc_wl_sc_toggle_item_btn');
delete_option('alg_wc_wl_sc_icon');
delete_site_option('alg_wc_wl_sc_icon');
delete_option('alg_wc_wl_sc_counter');
delete_site_option('alg_wc_wl_sc_counter');
delete_option('alg_wc_wl_sc_alg_wc_wl');
delete_site_option('alg_wc_wl_sc_alg_wc_wl');
delete_option('alg_wc_wl_sc_remove_all_btn');
delete_site_option('alg_wc_wl_sc_remove_all_btn');
delete_option('alg_wc_wl_sorting_method');
delete_site_option('alg_wc_wl_sorting_method');
delete_option('woocommerce_alg_wc_wl_stock_settings');
delete_site_option('woocommerce_alg_wc_wl_stock_settings');
delete_option('alg_wc_wl_subtotal');
delete_site_option('alg_wc_wl_subtotal');
delete_option('alg_wc_wl_subtotal_position');
delete_site_option('alg_wc_wl_subtotal_position');
delete_option('alg_wc_wl_subtotal_column');
delete_site_option('alg_wc_wl_subtotal_column');
delete_option('alg_wc_wl_tab_slug');
delete_site_option('alg_wc_wl_tab_slug');
delete_option('alg_wc_wl_taxonomies');
delete_site_option('alg_wc_wl_taxonomies');
delete_option('alg_wc_wl_guest_user_data_type');
delete_site_option('alg_wc_wl_guest_user_data_type');
delete_option('alg_wc_wl_guest_user_expire_time_number');
delete_site_option('alg_wc_wl_guest_user_expire_time_number');
delete_option('alg_wc_wl_guest_user_expire_time_unit');
delete_site_option('alg_wc_wl_guest_user_expire_time_unit');
delete_option('alg_wc_wl_allow_variations');
delete_site_option('alg_wc_wl_allow_variations');
delete_option('alg_wc_wl_texts_email_link');
delete_site_option('alg_wc_wl_texts_email_link');
delete_option('alg_wc_wl_dropdown_sorting');
delete_site_option('alg_wc_wl_dropdown_sorting');
delete_option('alg_wc_wl_duplicate_option');
delete_site_option('alg_wc_wl_duplicate_option');
delete_option('alg_wc_wl_note_field_email_enable');
delete_site_option('alg_wc_wl_note_field_email_enable');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_registered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_registered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_registered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_registered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_unregistered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_unregistered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_unregistered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_wl_added_by_unregistered_users_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_wl_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_wl_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_wl_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_wl_item' ) );

