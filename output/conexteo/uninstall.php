<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conexteo_setting__options');
delete_site_option('conexteo_setting__options');
delete_option('example_plugin_options');
delete_site_option('example_plugin_options');
delete_option('conexteo_synccustomers_setting');
delete_site_option('conexteo_synccustomers_setting');
delete_option('conexteo_cronkey_setting');
delete_site_option('conexteo_cronkey_setting');
delete_option('conexteo_contactlist_setting');
delete_site_option('conexteo_contactlist_setting');
delete_option('conexteo_appid_setting');
delete_site_option('conexteo_appid_setting');
delete_option('conexteo_keyid_setting');
delete_site_option('conexteo_keyid_setting');

