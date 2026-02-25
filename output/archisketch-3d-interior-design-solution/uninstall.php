<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('archisketch_plugin_login_url');
delete_site_option('archisketch_plugin_login_url');
delete_option('archisketch_plugin_uuid');
delete_site_option('archisketch_plugin_uuid');

