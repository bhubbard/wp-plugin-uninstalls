<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sstt-primary-color');
delete_site_option('sstt-primary-color');
delete_option('sstt-image-position');
delete_site_option('sstt-image-position');
delete_option('sstt-round-corner');
delete_site_option('sstt-round-corner');
delete_option('sstt_plugin_do_activation_redirect');
delete_site_option('sstt_plugin_do_activation_redirect');

