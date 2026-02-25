<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_psp_require_for');
delete_site_option('_psp_require_for');
delete_option('_psp_always_verify');
delete_site_option('_psp_always_verify');
delete_option('_psp_delay_timer');
delete_site_option('_psp_delay_timer');
delete_option('_psp_pagetargeting_option');
delete_site_option('_psp_pagetargeting_option');
delete_option('_psp_cookie_length');
delete_site_option('_psp_cookie_length');
delete_option('_psp_popup_template');
delete_site_option('_psp_popup_template');
delete_option('_psp_image_link');
delete_site_option('_psp_image_link');
delete_option('_psp_logo');
delete_site_option('_psp_logo');
delete_option('_psp_heading');
delete_site_option('_psp_heading');
delete_option('_psp_description');
delete_site_option('_psp_description');
delete_option('_psp_custom_agreebutton_text');
delete_site_option('_psp_custom_agreebutton_text');
delete_option('_psp_ctabutton_link');
delete_site_option('_psp_ctabutton_link');
delete_option('_psp_agree_btn_bgcolor');
delete_site_option('_psp_agree_btn_bgcolor');
delete_option('_psp_box_color');
delete_site_option('_psp_box_color');
delete_option('_psp_ajax_check');
delete_site_option('_psp_ajax_check');
delete_option('_psp_reset_cookie');
delete_site_option('_psp_reset_cookie');
delete_option('_psp_new_cookie_name');
delete_site_option('_psp_new_cookie_name');
delete_option('pretty-simple-popup');
delete_site_option('pretty-simple-popup');
delete_option('_psp_edge_to_edge_image');
delete_site_option('_psp_edge_to_edge_image');
delete_option('_psp_moreinfo_link');
delete_site_option('_psp_moreinfo_link');
delete_option('_psp_overlay_color');
delete_site_option('_psp_overlay_color');
delete_option('_psp_adjust_transparency');
delete_site_option('_psp_adjust_transparency');
delete_option('_psp_box_show');
delete_site_option('_psp_box_show');
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
delete_option('_psp_cookie_duration');
delete_site_option('_psp_cookie_duration');
delete_option('_psp_input_type');
delete_site_option('_psp_input_type');
delete_option('_psp_membership');
delete_site_option('_psp_membership');
delete_option('_psp_user_age_verify_option');
delete_site_option('_psp_user_age_verify_option');
delete_option('_psp_disclaimer');
delete_site_option('_psp_disclaimer');
delete_option('_psp_disAgree_btn_bgcolor');
delete_site_option('_psp_disAgree_btn_bgcolor');
delete_option('_psp_custom_disagreebutton_text');
delete_site_option('_psp_custom_disagreebutton_text');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_psp_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_psp_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_psp_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_psp_needs_verify' ) );

