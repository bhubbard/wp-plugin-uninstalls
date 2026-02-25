<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customlogin_consumer_key');
delete_site_option('customlogin_consumer_key');
delete_option('customlogin_consumer_secret');
delete_site_option('customlogin_consumer_secret');
delete_option('customlogin_siret_access_token');
delete_site_option('customlogin_siret_access_token');
delete_option('customlogin_siret_token_expiry');
delete_site_option('customlogin_siret_token_expiry');
delete_option('customlogin_verification_type');
delete_site_option('customlogin_verification_type');
delete_option('customlogin_duns_number');
delete_site_option('customlogin_duns_number');
delete_option('customlogin_form_max_width');
delete_site_option('customlogin_form_max_width');
delete_option('customlogin_form_background_color');
delete_site_option('customlogin_form_background_color');
delete_option('customlogin_form_text_color');
delete_site_option('customlogin_form_text_color');
delete_option('customlogin_form_border_color');
delete_site_option('customlogin_form_border_color');
delete_option('customlogin_form_border_width');
delete_site_option('customlogin_form_border_width');
delete_option('customlogin_form_border_style');
delete_site_option('customlogin_form_border_style');
delete_option('customlogin_form_border_padding');
delete_site_option('customlogin_form_border_padding');
delete_option('customlogin_link_color');
delete_site_option('customlogin_link_color');
delete_option('customlogin_link_underline_style');
delete_site_option('customlogin_link_underline_style');
delete_option('customlogin_link_text_normal');
delete_site_option('customlogin_link_text_normal');
delete_option('customlogin_link_text');
delete_site_option('customlogin_link_text');
delete_option('customlogin_show_buttons');
delete_site_option('customlogin_show_buttons');
delete_option('customlogin_domain');
delete_site_option('customlogin_domain');
delete_option('customlogin_form_style');
delete_site_option('customlogin_form_style');
delete_option('customlogin_logo_text');
delete_site_option('customlogin_logo_text');
delete_option('customlogin_desc_id');
delete_site_option('customlogin_desc_id');
delete_option('simple_editor_control_logins');
delete_site_option('simple_editor_control_logins');

// Clear Cron Jobs
wp_clear_scheduled_hook('customlogin_renew_siret_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'just_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'just_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'just_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'just_registered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'company_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'company_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'company_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'company_name' ) );

