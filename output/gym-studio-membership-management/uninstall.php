<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fitsoft_livekey');
delete_site_option('fitsoft_livekey');
delete_option('fitsoft_accesskey');
delete_site_option('fitsoft_accesskey');
delete_option('my_fitsoft_options');
delete_site_option('my_fitsoft_options');
delete_option('fitsoft_previewurl');
delete_site_option('fitsoft_previewurl');
delete_option('my_fitsoft_color_options');
delete_site_option('my_fitsoft_color_options');
delete_option('my_fitsoft_hovermenu_options');
delete_site_option('my_fitsoft_hovermenu_options');
delete_option('my_fitsoft_chat_options');
delete_site_option('my_fitsoft_chat_options');
delete_option('my_fitsoft_membership_options');
delete_site_option('my_fitsoft_membership_options');
delete_option('fitsoft_membership_plugin_version');
delete_site_option('fitsoft_membership_plugin_version');

