<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpnm_enable_user_registration_notification');
delete_site_option('wpnm_enable_user_registration_notification');
delete_option('wpnm_user_registration_email');
delete_site_option('wpnm_user_registration_email');
delete_option('wpnm_enable_password_change_notification');
delete_site_option('wpnm_enable_password_change_notification');
delete_option('wpnm_password_change_email');
delete_site_option('wpnm_password_change_email');

