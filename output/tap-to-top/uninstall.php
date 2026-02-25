<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taptotop-primary-color');
delete_site_option('taptotop-primary-color');
delete_option('taptotop-border-color');
delete_site_option('taptotop-border-color');
delete_option(' taptotop-button-position');
delete_site_option(' taptotop-button-position');
delete_option('taptotop-rounded-corner');
delete_site_option('taptotop-rounded-corner');
delete_option('taptotop-button-position');
delete_site_option('taptotop-button-position');
delete_option('taptotop_plugin_do_activation_redirect');
delete_site_option('taptotop_plugin_do_activation_redirect');

