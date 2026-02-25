<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pearlbot_logo_id');
delete_site_option('pearlbot_logo_id');
delete_option('pearlbot_woocommerce_integrated');
delete_site_option('pearlbot_woocommerce_integrated');
delete_option('pearlbot_id');
delete_site_option('pearlbot_id');
delete_option('pearlbot_api_key');
delete_site_option('pearlbot_api_key');
delete_option('pearlbot_is_active');
delete_site_option('pearlbot_is_active');
delete_option('train_chatbot');
delete_site_option('train_chatbot');
delete_option('pearlbot_menu_icon_id');
delete_site_option('pearlbot_menu_icon_id');

// Delete Transients
delete_transient('pearlbot_admin_notice');
delete_site_transient('pearlbot_admin_notice');

