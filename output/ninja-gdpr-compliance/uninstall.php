<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('njt_gdpr_dataaccess');
delete_site_option('njt_gdpr_dataaccess');
delete_option('njt_gdpr_data_breach');
delete_site_option('njt_gdpr_data_breach');
delete_option('njt_gdpr_data_rectification');
delete_site_option('njt_gdpr_data_rectification');
delete_option('njt_gdpr_eu');
delete_site_option('njt_gdpr_eu');
delete_option('njt_gdpr_forget_me');
delete_site_option('njt_gdpr_forget_me');
delete_option('njt_gdpr_integrations');
delete_site_option('njt_gdpr_integrations');
delete_option('njt_gdpr_policy');
delete_site_option('njt_gdpr_policy');
delete_option('njt_gdpr_privacy_settings_page');
delete_site_option('njt_gdpr_privacy_settings_page');
delete_option('njt_gdpr_term');
delete_site_option('njt_gdpr_term');
delete_option('njt_gdpr_unsub');
delete_site_option('njt_gdpr_unsub');
delete_option('njt_gdpr_version');
delete_site_option('njt_gdpr_version');
delete_option('njt_gdpr');
delete_site_option('njt_gdpr');
delete_option('njt_gdpr_cookie_popup_content');
delete_site_option('njt_gdpr_cookie_popup_content');
delete_option('njt_gdpr_cookie_popup_agree_text');
delete_site_option('njt_gdpr_cookie_popup_agree_text');
delete_option('njt_gdpr_cookie_popup_decline_text');
delete_site_option('njt_gdpr_cookie_popup_decline_text');
delete_option('njt_gdpr_cookie_popup_display_type');
delete_site_option('njt_gdpr_cookie_popup_display_type');
delete_option('njt_gdpr_cookie_popup_hide_pages');
delete_site_option('njt_gdpr_cookie_popup_hide_pages');
delete_option('njt_gdpr_cookie_popup_show_pages');
delete_site_option('njt_gdpr_cookie_popup_show_pages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_date_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_date_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_date_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_date_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_old' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'njt_gdpr_allow_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'njt_gdpr_allow_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'njt_gdpr_allow_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'njt_gdpr_allow_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_policy_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'njt_gdpr_acceped_term_at' ) );

