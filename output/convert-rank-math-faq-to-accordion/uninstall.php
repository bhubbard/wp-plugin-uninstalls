<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('INBRMFA_plugin_do_activation_redirect');
delete_site_option('INBRMFA_plugin_do_activation_redirect');
delete_option('INBRMFA_options');
delete_site_option('INBRMFA_options');

