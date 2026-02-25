<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miappi_plugin_activation_notice_shown');
delete_site_option('miappi_plugin_activation_notice_shown');

