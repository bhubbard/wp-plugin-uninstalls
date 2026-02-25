<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('id_before_menu');
delete_site_option('id_before_menu');
delete_option('id_menumaker_pullpage');
delete_site_option('id_menumaker_pullpage');
delete_option('id_before_item');
delete_site_option('id_before_item');
delete_option('id_after_item');
delete_site_option('id_after_item');
delete_option('id_before_active_item');
delete_site_option('id_before_active_item');
delete_option('id_after_active_item');
delete_site_option('id_after_active_item');
delete_option('id_after_menu');
delete_site_option('id_after_menu');
delete_option('id_menumaker_number');
delete_site_option('id_menumaker_number');
delete_option('id_menumaker_maxnum');
delete_site_option('id_menumaker_maxnum');
delete_option('id_menumaker_menu_1');
delete_site_option('id_menumaker_menu_1');

