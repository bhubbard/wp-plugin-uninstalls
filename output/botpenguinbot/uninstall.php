<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('test_plugin_variable');
delete_site_option('test_plugin_variable');
delete_option('BOTPENGUIN_do_activation_redirect');
delete_site_option('BOTPENGUIN_do_activation_redirect');

