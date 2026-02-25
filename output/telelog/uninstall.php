<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('telelog_api_key');
delete_site_option('telelog_api_key');
delete_option('telelog_chat_id');
delete_site_option('telelog_chat_id');
delete_option('telelog_on_post_update');
delete_site_option('telelog_on_post_update');
delete_option('telelog_on_post_publish');
delete_site_option('telelog_on_post_publish');
delete_option('telelog_on_post_comment');
delete_site_option('telelog_on_post_comment');
delete_option('telelog_on_login_fail');
delete_site_option('telelog_on_login_fail');
delete_option('telelog_on_register_user');
delete_site_option('telelog_on_register_user');
delete_option('telelog_on_theme_switch');
delete_site_option('telelog_on_theme_switch');
delete_option('telelog_on_plugin_activate');
delete_site_option('telelog_on_plugin_activate');
delete_option('telelog_on_plugin_deactivate');
delete_site_option('telelog_on_plugin_deactivate');
delete_option('telelog_on_woocommerce_order_new');
delete_site_option('telelog_on_woocommerce_order_new');

