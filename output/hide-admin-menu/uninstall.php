<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_menu_bh_plugin');
delete_site_option('hide_menu_bh_plugin');
delete_option('hide_sub_menu_bh_plugin');
delete_site_option('hide_sub_menu_bh_plugin');
delete_option('hide_top_menu_bh_plugin');
delete_site_option('hide_top_menu_bh_plugin');

