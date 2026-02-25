<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplm_is_email_admin_owner');
delete_site_option('wplm_is_email_admin_owner');
delete_option('wplm_is_email_owner_after_expire');
delete_site_option('wplm_is_email_owner_after_expire');
delete_option('wplm_is_email_admin_after_expire');
delete_site_option('wplm_is_email_admin_after_expire');
delete_option('wplm_is_delete_after_expire');
delete_site_option('wplm_is_delete_after_expire');
delete_option('site_url');
delete_site_option('site_url');
delete_option('wplm_expired_email_format_admin');
delete_site_option('wplm_expired_email_format_admin');
delete_option('wplm_expired_email_format_owner');
delete_site_option('wplm_expired_email_format_owner');
delete_option('wplm_admin_email');
delete_site_option('wplm_admin_email');
delete_option('wplm_days_before');
delete_site_option('wplm_days_before');
delete_option('wplm_expiring_email_format_admin');
delete_site_option('wplm_expiring_email_format_admin');
delete_option('wplm_expiring_email_format_owner');
delete_site_option('wplm_expiring_email_format_owner');
delete_option('widget_myHelloWorld');
delete_site_option('widget_myHelloWorld');
delete_option('widget_mymumbleWorld');
delete_site_option('widget_mymumbleWorld');

