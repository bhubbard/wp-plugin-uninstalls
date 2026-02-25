<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('position_option');
delete_site_option('position_option');
delete_option('wln_settings_page');
delete_site_option('wln_settings_page');
delete_option('wln_register_plugin_settings');
delete_site_option('wln_register_plugin_settings');
delete_option('wln-plugin-settings-group-fields');
delete_site_option('wln-plugin-settings-group-fields');
delete_option('phone_option');
delete_site_option('phone_option');
delete_option('message_option');
delete_site_option('message_option');
delete_option('texticon_option');
delete_site_option('texticon_option');
delete_option('position_option_v');
delete_site_option('position_option_v');

