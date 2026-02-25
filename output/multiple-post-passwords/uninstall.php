<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpp_use_alternative_password_check');
delete_site_option('mpp_use_alternative_password_check');
delete_option('mpp_delete_used_passwords');
delete_site_option('mpp_delete_used_passwords');
delete_option('mpp_used_passwords');
delete_site_option('mpp_used_passwords');
delete_option('mpp_password_expire_hours');
delete_site_option('mpp_password_expire_hours');
delete_option('mpp_used_pw_deletion_notification_email');
delete_site_option('mpp_used_pw_deletion_notification_email');

