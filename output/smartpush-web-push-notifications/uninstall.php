<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_app');
delete_site_option('sp_app');
delete_option('sp_plugin_do_activation_redirect');
delete_site_option('sp_plugin_do_activation_redirect');

