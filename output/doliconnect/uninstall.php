<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'doliboard_title_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'doliboard_email_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dolibarr_public_url');
delete_site_option('dolibarr_public_url');
delete_option('dolibarr_private_key');
delete_site_option('dolibarr_private_key');
delete_option('dolibarr_entity');
delete_site_option('dolibarr_entity');
delete_option('doliconnect_cronjob_multisite');
delete_site_option('doliconnect_cronjob_multisite');
delete_option('license_key_doliconnect-pro');
delete_site_option('license_key_doliconnect-pro');
delete_option('dolicustsupp_can_register');
delete_site_option('dolicustsupp_can_register');
delete_option('dolibarr_b2bmode');
delete_site_option('dolibarr_b2bmode');
delete_option('doliconnectdisplayinvoice');
delete_site_option('doliconnectdisplayinvoice');
delete_option('doliconnectbeta');
delete_site_option('doliconnectbeta');
delete_option('doliconnectfontawesome');
delete_site_option('doliconnectfontawesome');
delete_option('doliconnectrestrict');
delete_site_option('doliconnectrestrict');
delete_option('dolicartproductgrid');
delete_site_option('dolicartproductgrid');
delete_option('dolicartsuppliergrid');
delete_site_option('dolicartsuppliergrid');
delete_option('doliconnect_facebook');
delete_site_option('doliconnect_facebook');
delete_option('doliconnect_google');
delete_site_option('doliconnect_google');
delete_option('doliaccount');
delete_site_option('doliaccount');
delete_option('doliDefaultclient');
delete_site_option('doliDefaultclient');
delete_option('doliProductclient');
delete_site_option('doliProductclient');
delete_option('doliaccountinfo');
delete_site_option('doliaccountinfo');
delete_option('doliconnect_disablepro');
delete_site_option('doliconnect_disablepro');
delete_option('doliconnect_cronjob');
delete_site_option('doliconnect_cronjob');
delete_option('doliconnectrestrict_role');
delete_site_option('doliconnectrestrict_role');
delete_option('dolicart');
delete_site_option('dolicart');
delete_option('dolitos');
delete_site_option('dolitos');
delete_option('dolidonation');
delete_site_option('dolidonation');
delete_option('doliagenda');
delete_site_option('doliagenda');
delete_option('doliclassifieds');
delete_site_option('doliclassifieds');
delete_option('doliconnect_ipkiosk');
delete_site_option('doliconnect_ipkiosk');
delete_option('dolishop');
delete_site_option('dolishop');
delete_option('dolifaq');
delete_site_option('dolifaq');
delete_option('dolishipping');
delete_site_option('dolishipping');
delete_option('dolicartnewlist');
delete_site_option('dolicartnewlist');
delete_option('dolicartlist');
delete_site_option('dolicartlist');
delete_option('dolisupplier');
delete_site_option('dolisupplier');
delete_option('dolicontact');
delete_site_option('dolicontact');
delete_option('doliconnect_facebook_key');
delete_site_option('doliconnect_facebook_key');
delete_option('doliconnect_facebook_secret');
delete_site_option('doliconnect_facebook_secret');
delete_option('doliconnect_google_key');
delete_site_option('doliconnect_google_key');
delete_option('doliconnect_google_secret');
delete_site_option('doliconnect_google_secret');
delete_option('doliconnect_twitter_key');
delete_site_option('doliconnect_twitter_key');
delete_option('doliconnect_twitter_secret');
delete_site_option('doliconnect_twitter_secret');
delete_option('doliconnect_linkedin_key');
delete_site_option('doliconnect_linkedin_key');
delete_option('doliconnect_linkedin_secret');
delete_site_option('doliconnect_linkedin_secret');
delete_option('doliconnect_twitter');
delete_site_option('doliconnect_twitter');
delete_option('doliconnect_linkedin');
delete_site_option('doliconnect_linkedin');
delete_option('registration');
delete_site_option('registration');
delete_option('secupress_active_submodule_move-login');
delete_site_option('secupress_active_submodule_move-login');
delete_option('doliconnect_login');
delete_site_option('doliconnect_login');
delete_option('doliloginmodal');
delete_site_option('doliloginmodal');
delete_option('doliconnect_mode');
delete_site_option('doliconnect_mode');
delete_option('tz_email');
delete_site_option('tz_email');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'doliconnect_delay_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('doliconnect_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'doliboard_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'doliboard_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'doliboard_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'doliboard_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%member_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%member_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%member_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%member_photo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'civility_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'civility_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'civility_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'civility_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_birth' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_birth' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_birth' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_birth' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'optin1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'optin1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'optin1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'optin1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginmailalert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginmailalert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginmailalert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginmailalert' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'doliproduct_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'doliproduct_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'doliproduct_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'doliproduct_category_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_doliLock_dropdown_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_doliLock_dropdown_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_doliLock_dropdown_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_doliLock_dropdown_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_doliproduct_productid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_doliproduct_productid' ) );

