<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vs_injector_account_id');
delete_site_option('vs_injector_account_id');
delete_option('vs_injector_theme');
delete_site_option('vs_injector_theme');
delete_option('vs_injector_theme_dark');
delete_site_option('vs_injector_theme_dark');
delete_option('vs_injector_cart_position');
delete_site_option('vs_injector_cart_position');
delete_option('vs_injector_cart_button');
delete_site_option('vs_injector_cart_button');

