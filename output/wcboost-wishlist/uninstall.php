<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcboost_wishlist_enable_guest_wishlist');
delete_site_option('wcboost_wishlist_enable_guest_wishlist');
delete_option('wcboost_wishlist_guest_behaviour');
delete_site_option('wcboost_wishlist_guest_behaviour');
delete_option('wcboost_wishlist_guest_message');
delete_site_option('wcboost_wishlist_guest_message');
delete_option('wcboost_wishlist_allow_adding_variations');
delete_site_option('wcboost_wishlist_allow_adding_variations');
delete_option('wcboost_wishlist_redirect_after_add');
delete_site_option('wcboost_wishlist_redirect_after_add');
delete_option('wcboost_wishlist_page_id');
delete_site_option('wcboost_wishlist_page_id');
delete_option('wcboost_wishlist_title_default');
delete_site_option('wcboost_wishlist_title_default');
delete_option('wcboost_wishlist_auto_remove');
delete_site_option('wcboost_wishlist_auto_remove');
delete_option('wcboost_wishlist_page_show_title');
delete_site_option('wcboost_wishlist_page_show_title');
delete_option('wcboost_wishlist_clear_guest_wishlist_after_merge');
delete_site_option('wcboost_wishlist_clear_guest_wishlist_after_merge');
delete_option('wcboost_wishlist_page_show_desc');
delete_site_option('wcboost_wishlist_page_show_desc');
delete_option('wcboost_wishlist_share');
delete_site_option('wcboost_wishlist_share');
delete_option('wcboost_wishlist_loop_button_position');
delete_site_option('wcboost_wishlist_loop_button_position');
delete_option('wcboost_wishlist_button_type');
delete_site_option('wcboost_wishlist_button_type');
delete_option('wcboost_wishlist_exists_item_button_behaviour');
delete_site_option('wcboost_wishlist_exists_item_button_behaviour');
delete_option('wcboost_wishlist_ajax_bypass_cache');
delete_site_option('wcboost_wishlist_ajax_bypass_cache');
delete_option('wcboost_wishlist_share_socials');
delete_site_option('wcboost_wishlist_share_socials');
delete_option('wcboost_wishlist_single_button_position');
delete_site_option('wcboost_wishlist_single_button_position');
delete_option('wcboost_wishlist_button_style');
delete_site_option('wcboost_wishlist_button_style');
delete_option('wcboost_wishlist_button_hover_style');
delete_site_option('wcboost_wishlist_button_hover_style');
delete_option('wcboost_wishlist_button_icon');
delete_site_option('wcboost_wishlist_button_icon');
delete_option('wcboost_wishlist_button_icon_custom');
delete_site_option('wcboost_wishlist_button_icon_custom');
delete_option('wcboost_wishlist_button_text');
delete_site_option('wcboost_wishlist_button_text');
delete_option('wcboost_wishlist_version');
delete_site_option('wcboost_wishlist_version');
delete_option('wcboost_wishlist_edit_endpoint');
delete_site_option('wcboost_wishlist_edit_endpoint');
delete_option('wcboost_wishlist_rewrite_rules_hash');
delete_site_option('wcboost_wishlist_rewrite_rules_hash');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('wcboost_wishlist_merge_guest_wishlist');
delete_site_option('wcboost_wishlist_merge_guest_wishlist');
delete_option('wcboost_wishlist_enable_ajax_add_to_wishlist');
delete_site_option('wcboost_wishlist_enable_ajax_add_to_wishlist');
delete_option('wcboost_wishlist_table_columns');
delete_site_option('wcboost_wishlist_table_columns');

// Delete Transients
delete_transient('wcboost_wishlist_installing');
delete_site_transient('wcboost_wishlist_installing');
delete_transient('wcboost_wishlist_auto_deactivate_free_version');
delete_site_transient('wcboost_wishlist_auto_deactivate_free_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcboost_wishlist_merge_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcboost_wishlist_merge_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcboost_wishlist_merge_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcboost_wishlist_merge_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );

