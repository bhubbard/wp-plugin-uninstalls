<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatboard-settings');
delete_site_option('chatboard-settings');
delete_option('chatboard_show_activation_notice');
delete_site_option('chatboard_show_activation_notice');

