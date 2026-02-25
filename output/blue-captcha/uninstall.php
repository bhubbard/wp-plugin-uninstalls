<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blcap_settings');
delete_site_option('blcap_settings');
delete_option('blcap_protection_key');
delete_site_option('blcap_protection_key');
delete_option('blcap_version');
delete_site_option('blcap_version');
delete_option('blcap_ip_informer_url');
delete_site_option('blcap_ip_informer_url');
delete_option('blcap_date');
delete_site_option('blcap_date');
delete_option('blcap_sessions');
delete_site_option('blcap_sessions');

