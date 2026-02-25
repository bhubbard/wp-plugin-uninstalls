<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MOBILE_MENU_BUILDER_INSTALLED');
delete_site_option('MOBILE_MENU_BUILDER_INSTALLED');
delete_option('mobile_menu_builder_customizer');
delete_site_option('mobile_menu_builder_customizer');

