<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lwpdm_menu_cart_activation_time');
delete_site_option('lwpdm_menu_cart_activation_time');
delete_option('lwpdm_menu_cart_spare_me');
delete_site_option('lwpdm_menu_cart_spare_me');
delete_option('lwp_menu_cart_options');
delete_site_option('lwp_menu_cart_options');

