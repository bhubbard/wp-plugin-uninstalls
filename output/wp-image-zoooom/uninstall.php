<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zoooom_settings');
delete_site_option('zoooom_settings');
delete_option('zoooom_general');
delete_site_option('zoooom_general');
delete_option('fusion_options');
delete_site_option('fusion_options');
delete_option('zoooom_activation_time');
delete_site_option('zoooom_activation_time');
delete_option('zoooom_version');
delete_site_option('zoooom_version');
delete_option('zoooom_dismiss_notice');
delete_site_option('zoooom_dismiss_notice');

