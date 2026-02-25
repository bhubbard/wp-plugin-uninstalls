<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitechat_show_activation_notice');
delete_site_option('sitechat_show_activation_notice');
delete_option('sitechat_link_code');
delete_site_option('sitechat_link_code');
delete_option('sitechat_enable_ecommerce');
delete_site_option('sitechat_enable_ecommerce');

