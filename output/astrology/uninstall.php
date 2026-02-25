<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('astrology_plugin_options');
delete_site_option('astrology_plugin_options');
delete_option('astrology_client_status');
delete_site_option('astrology_client_status');
delete_option('astrology_admin_notices');
delete_site_option('astrology_admin_notices');

