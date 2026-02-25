<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_call_action_option_mobile');
delete_site_option('wp_call_action_option_mobile');
delete_option('wp_call_action_option_desktop');
delete_site_option('wp_call_action_option_desktop');

