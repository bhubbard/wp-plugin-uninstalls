<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wlist_settings');
delete_site_option('wlist_settings');
delete_option('wlist_list_table');
delete_site_option('wlist_list_table');
delete_option('wlist_list_page_table');
delete_site_option('wlist_list_page_table');
delete_option('wlist_plugin_title');
delete_site_option('wlist_plugin_title');

