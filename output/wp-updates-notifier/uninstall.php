<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_wpun_settings');
delete_site_option('sc_wpun_settings');
delete_option('sc_wpun_settings_ver');
delete_site_option('sc_wpun_settings_ver');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('sc_wpun_send_test_slack');
delete_site_transient('sc_wpun_send_test_slack');
delete_transient('sc_wpun_send_test_email');
delete_site_transient('sc_wpun_send_test_email');

