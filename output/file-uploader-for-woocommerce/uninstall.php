<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcu_enable_plugin');
delete_site_option('wcu_enable_plugin');
delete_option('wcu_product_category');
delete_site_option('wcu_product_category');
delete_option('wcu_plugin_setting_user_password');
delete_site_option('wcu_plugin_setting_user_password');
delete_option('wcu_plugin_setting_user_login');
delete_site_option('wcu_plugin_setting_user_login');
delete_option('wcu_uc_public_key');
delete_site_option('wcu_uc_public_key');
delete_option('wcu_plugin_user_id');
delete_site_option('wcu_plugin_user_id');

