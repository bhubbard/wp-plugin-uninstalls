<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lpcode_button_numero');
delete_site_option('lpcode_button_numero');
delete_option('lpcode_button_mensagem');
delete_site_option('lpcode_button_mensagem');
delete_option('lpcode_button_icon');
delete_site_option('lpcode_button_icon');
delete_option('lpcode_button_animate');
delete_site_option('lpcode_button_animate');
delete_option('lpcode_button_local');
delete_site_option('lpcode_button_local');
delete_option('lpcode_button_size');
delete_site_option('lpcode_button_size');
delete_option('lpcode_button_bottom');
delete_site_option('lpcode_button_bottom');
delete_option('lpcode_button_distance');
delete_site_option('lpcode_button_distance');

