<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buddymeet_jitsi_appid');
delete_site_option('buddymeet_jitsi_appid');
delete_option('buddymeet_jitsi_apikeyid');
delete_site_option('buddymeet_jitsi_apikeyid');
delete_option('buddymeet_jitsi_privatekey');
delete_site_option('buddymeet_jitsi_privatekey');
delete_option('buddymeet_jitsi_domain');
delete_site_option('buddymeet_jitsi_domain');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('_buddymeet_enabled');
delete_site_option('_buddymeet_enabled');
delete_option('_buddymeet_version');
delete_site_option('_buddymeet_version');

