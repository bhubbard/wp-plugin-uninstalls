<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iusisu_primary_color');
delete_site_option('iusisu_primary_color');
delete_option('iusisu_secondary_color');
delete_site_option('iusisu_secondary_color');
delete_option('iusisu_pre_secondary_color');
delete_site_option('iusisu_pre_secondary_color');
delete_option('iusisu_pre_secondary_hover_color');
delete_site_option('iusisu_pre_secondary_hover_color');
delete_option('iusisu_registration_form');
delete_site_option('iusisu_registration_form');
delete_option('iusisu_login_form');
delete_site_option('iusisu_login_form');
delete_option('iusisu_my_account');
delete_site_option('iusisu_my_account');
delete_option('iusisu_forgot_password');
delete_site_option('iusisu_forgot_password');
delete_option('iusisu_change_password');
delete_site_option('iusisu_change_password');
delete_option('iusisu_role');
delete_site_option('iusisu_role');
delete_option('iusisu_login_msg');
delete_site_option('iusisu_login_msg');
delete_option('iusisu_registration_msg');
delete_site_option('iusisu_registration_msg');
delete_option('iusisu_forget_pass_msg');
delete_site_option('iusisu_forget_pass_msg');
delete_option('iusisu_change_pass_msg');
delete_site_option('iusisu_change_pass_msg');
delete_option('iusisu_user_from_email');
delete_site_option('iusisu_user_from_email');
delete_option('iusisu_user_signature');
delete_site_option('iusisu_user_signature');
delete_option('iusisu_user_subject');
delete_site_option('iusisu_user_subject');
delete_option('iusisu_admin_subject');
delete_site_option('iusisu_admin_subject');
delete_option('iusisu_userforgot_subject');
delete_site_option('iusisu_userforgot_subject');
delete_option('iusisu_userchange_subject');
delete_site_option('iusisu_userchange_subject');
delete_option('iusisu_user_registration_email_body');
delete_site_option('iusisu_user_registration_email_body');
delete_option('iusisu_user_registration_email_body_admin');
delete_site_option('iusisu_user_registration_email_body_admin');
delete_option('iusisu_user_forget_password_email_body');
delete_site_option('iusisu_user_forget_password_email_body');
delete_option('iusisu_user_password_change_email_body');
delete_site_option('iusisu_user_password_change_email_body');
delete_option('iusisu_user_login_page');
delete_site_option('iusisu_user_login_page');
delete_option('iusisu_user_registration_page');
delete_site_option('iusisu_user_registration_page');
delete_option('iusisu_user_my_account_page');
delete_site_option('iusisu_user_my_account_page');
delete_option('iusisu_user_forgot_pass_page');
delete_site_option('iusisu_user_forgot_pass_page');
delete_option('iusisu_user_logo_img');
delete_site_option('iusisu_user_logo_img');
delete_option('admin_subject');
delete_site_option('admin_subject');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_activated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_profile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );

