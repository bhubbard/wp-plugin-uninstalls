<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dc_pomfw_activate');
delete_site_option('dc_pomfw_activate');
delete_option('dc_pomfw_message');
delete_site_option('dc_pomfw_message');
delete_option('dc_pomfw_position');
delete_site_option('dc_pomfw_position');
delete_option('dc_pomfw_login_text');
delete_site_option('dc_pomfw_login_text');
delete_option('dc_pomfw_login_link');
delete_site_option('dc_pomfw_login_link');
delete_option('dc_pomfw_register_text');
delete_site_option('dc_pomfw_register_text');
delete_option('dc_pomfw_register_link');
delete_site_option('dc_pomfw_register_link');

