<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tid-primary-color');
delete_site_option('tid-primary-color');
delete_option('tid-button-position');
delete_site_option('tid-button-position');
delete_option('tid-rounded-corner');
delete_site_option('tid-rounded-corner');
delete_option('tid_plugin_do_activation_redirect');
delete_site_option('tid_plugin_do_activation_redirect');

