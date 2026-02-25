<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lorybot_options');
delete_site_option('lorybot_options');
delete_option('lorybot_server_url');
delete_site_option('lorybot_server_url');
delete_option('lorybot_version');
delete_site_option('lorybot_version');
delete_option('lorybot_do_activation_redirect');
delete_site_option('lorybot_do_activation_redirect');

