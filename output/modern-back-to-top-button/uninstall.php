<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modern_Back_To_Top_Button_settings');
delete_site_option('modern_Back_To_Top_Button_settings');
delete_option('modern_back_to_top_do_activation_redirect');
delete_site_option('modern_back_to_top_do_activation_redirect');

