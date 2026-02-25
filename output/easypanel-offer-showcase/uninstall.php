<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easypanel_offer_showcase_plugin_language');
delete_site_option('easypanel_offer_showcase_plugin_language');
delete_option('easypanel_offer_showcase_quiz_activation_date');
delete_site_option('easypanel_offer_showcase_quiz_activation_date');
delete_option('easypanel_offer_showcase_primary_color');
delete_site_option('easypanel_offer_showcase_primary_color');
delete_option('easypanel_offer_showcase_secondary_color');
delete_site_option('easypanel_offer_showcase_secondary_color');
delete_option('easypanel_offer_showcase_text_color');
delete_site_option('easypanel_offer_showcase_text_color');
delete_option('easypanel_offer_showcase_button_text');
delete_site_option('easypanel_offer_showcase_button_text');
delete_option('easypanel_offer_showcase_columns');
delete_site_option('easypanel_offer_showcase_columns');
delete_option('easypanel_offer_showcase_currency');
delete_site_option('easypanel_offer_showcase_currency');
delete_option('easypanel_offer_showcase_border_radius');
delete_site_option('easypanel_offer_showcase_border_radius');
delete_option('easypanel_offer_showcase_card_padding');
delete_site_option('easypanel_offer_showcase_card_padding');
delete_option('easypanel_offer_showcase_button_radius');
delete_site_option('easypanel_offer_showcase_button_radius');
delete_option('easypanel_offer_showcase_grid_gap');
delete_site_option('easypanel_offer_showcase_grid_gap');
delete_option('easypanel_offer_showcase_badge_color');
delete_site_option('easypanel_offer_showcase_badge_color');
delete_option('easypanel_offer_showcase_bestseller_border_color');
delete_site_option('easypanel_offer_showcase_bestseller_border_color');
delete_option('easypanel_offer_showcase_bestseller_border_width');
delete_site_option('easypanel_offer_showcase_bestseller_border_width');
delete_option('easypanel_offer_showcase_header_alignment');
delete_site_option('easypanel_offer_showcase_header_alignment');
delete_option('easypanel_offer_showcase_body_alignment');
delete_site_option('easypanel_offer_showcase_body_alignment');
delete_option('easypanel_offer_showcase_quiz_completed');
delete_site_option('easypanel_offer_showcase_quiz_completed');
delete_option('easypanel_offer_showcase_quiz_last_shown');
delete_site_option('easypanel_offer_showcase_quiz_last_shown');
delete_option('easypanel_offer_showcase_quiz_result');
delete_site_option('easypanel_offer_showcase_quiz_result');

// Delete Transients
delete_transient('easypanel_offer_showcase_lang_changed_notice');
delete_site_transient('easypanel_offer_showcase_lang_changed_notice');
delete_transient('easypanel_offer_showcase_settings_saved_notice');
delete_site_transient('easypanel_offer_showcase_settings_saved_notice');
delete_transient('easypanel_offer_showcase_quiz_error');
delete_site_transient('easypanel_offer_showcase_quiz_error');
delete_transient('easypanel_offer_showcase_quiz_success');
delete_site_transient('easypanel_offer_showcase_quiz_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_supertitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_supertitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_supertitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_supertitle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_show_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_show_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_show_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_show_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_badge_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_badge_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_badge_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_badge_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_button_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easypanel_offer_showcase_price_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

