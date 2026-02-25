<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp247_body_classes_css');
delete_site_option('wp247_body_classes_css');
delete_option('wp247_body_classes_scroll');
delete_site_option('wp247_body_classes_scroll');
delete_option('wp247_body_classes_custom');
delete_site_option('wp247_body_classes_custom');
delete_option('wp247_body_classes_mobile');
delete_site_option('wp247_body_classes_mobile');

