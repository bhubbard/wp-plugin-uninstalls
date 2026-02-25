<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tadv_admin_settings');
delete_site_option('tadv_admin_settings');
delete_option('tadv_settings');
delete_site_option('tadv_settings');
delete_option('tadv_version');
delete_site_option('tadv_version');
delete_option('tadv_options');
delete_site_option('tadv_options');
delete_option('tadv_toolbars');
delete_site_option('tadv_toolbars');
delete_option('tadv_plugins');
delete_site_option('tadv_plugins');
delete_option('tadv_btns1');
delete_site_option('tadv_btns1');
delete_option('tadv_btns2');
delete_site_option('tadv_btns2');
delete_option('tadv_btns3');
delete_site_option('tadv_btns3');
delete_option('tadv_btns4');
delete_site_option('tadv_btns4');
delete_option('tadv_allbtns');
delete_site_option('tadv_allbtns');

