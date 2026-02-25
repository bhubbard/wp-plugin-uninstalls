<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plytix-settings');
delete_site_option('plytix-settings');
delete_option('plytix-settings-options');
delete_site_option('plytix-settings-options');
delete_option('plytix-settings-options-use-field-gtin');
delete_site_option('plytix-settings-options-use-field-gtin');
delete_option('plytix_site_configuration');
delete_site_option('plytix_site_configuration');
delete_option('plytix_plugin_folder_id');
delete_site_option('plytix_plugin_folder_id');
delete_option('plytix_api_credentials');
delete_site_option('plytix_api_credentials');

// Delete Transients
delete_transient('plytix_config_first_time');
delete_site_transient('plytix_config_first_time');
delete_transient('plytix_show_config_msg_ok');
delete_site_transient('plytix_show_config_msg_ok');
delete_transient('plytix_redirect');
delete_site_transient('plytix_redirect');
delete_transient('plytix_show_api_msg_ok');
delete_site_transient('plytix_show_api_msg_ok');

