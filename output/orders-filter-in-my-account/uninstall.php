<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wos-setting');
delete_site_option('wos-setting');
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');

