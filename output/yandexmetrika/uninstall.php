<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_yandexmetrika');
delete_site_option('wp_yandexmetrika');
delete_option('metrika_counter');
delete_site_option('metrika_counter');
delete_option('metrika_admintracking');
delete_site_option('metrika_admintracking');
delete_option('metrika_position');
delete_site_option('metrika_position');

