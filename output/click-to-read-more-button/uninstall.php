<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('click_to_read_more_button_options');
delete_site_option('click_to_read_more_button_options');
delete_option('click_to_read_more_button_show_activation_notice');
delete_site_option('click_to_read_more_button_show_activation_notice');

