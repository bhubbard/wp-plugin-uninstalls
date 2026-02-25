<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('new_user_register_mail_subject');
delete_site_option('new_user_register_mail_subject');
delete_option('new_user_register_mail_body');
delete_site_option('new_user_register_mail_body');
delete_option('enable_subscription');
delete_site_option('enable_subscription');
delete_option('default_registration_form_hooks');
delete_site_option('default_registration_form_hooks');
delete_option('wprw_admin_email');
delete_site_option('wprw_admin_email');
delete_option('wprw_from_email');
delete_site_option('wprw_from_email');
delete_option('wprw_success_msg');
delete_site_option('wprw_success_msg');
delete_option('enable_cfws_newsletter_subscription');
delete_site_option('enable_cfws_newsletter_subscription');
delete_option('subscription_page');
delete_site_option('subscription_page');
delete_option('thank_you_page_after_registration_url');
delete_site_option('thank_you_page_after_registration_url');
delete_option('username_in_registration');
delete_site_option('username_in_registration');
delete_option('password_in_registration');
delete_site_option('password_in_registration');
delete_option('firstname_in_registration');
delete_site_option('firstname_in_registration');
delete_option('firstname_in_profile');
delete_site_option('firstname_in_profile');
delete_option('is_firstname_required');
delete_site_option('is_firstname_required');
delete_option('lastname_in_registration');
delete_site_option('lastname_in_registration');
delete_option('lastname_in_profile');
delete_site_option('lastname_in_profile');
delete_option('is_lastname_required');
delete_site_option('is_lastname_required');
delete_option('displayname_in_registration');
delete_site_option('displayname_in_registration');
delete_option('displayname_in_profile');
delete_site_option('displayname_in_profile');
delete_option('is_displayname_required');
delete_site_option('is_displayname_required');
delete_option('userdescription_in_registration');
delete_site_option('userdescription_in_registration');
delete_option('userdescription_in_profile');
delete_site_option('userdescription_in_profile');
delete_option('is_userdescription_required');
delete_site_option('is_userdescription_required');
delete_option('userurl_in_registration');
delete_site_option('userurl_in_registration');
delete_option('userurl_in_profile');
delete_site_option('userurl_in_profile');
delete_option('is_userurl_required');
delete_site_option('is_userurl_required');
delete_option('captcha_in_registration');
delete_site_option('captcha_in_registration');
delete_option('captcha_in_wordpress_default_registration');
delete_site_option('captcha_in_wordpress_default_registration');
delete_option('force_login_after_registration');
delete_site_option('force_login_after_registration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_reg_with_wprp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_reg_with_wprp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_reg_with_wprp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_reg_with_wprp' ) );

