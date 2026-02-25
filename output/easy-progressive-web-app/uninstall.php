<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qeapps_pwa_apple_icons_uploaded');
delete_site_option('qeapps_pwa_apple_icons_uploaded');
delete_option('qeapps_pwa_manifest_settings');
delete_site_option('qeapps_pwa_manifest_settings');
delete_option('qeappspwa_email_error_message');
delete_site_option('qeappspwa_email_error_message');
delete_option('qeappspwa_email_success_message');
delete_site_option('qeappspwa_email_success_message');
delete_option('error_notice_message');
delete_site_option('error_notice_message');
delete_option('splash_error_notice_message');
delete_site_option('splash_error_notice_message');
delete_option('qepwa_android_count');
delete_site_option('qepwa_android_count');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

