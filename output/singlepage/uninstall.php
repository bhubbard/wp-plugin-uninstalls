<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_settings');
delete_site_option('ps_settings');
delete_option('logo');
delete_site_option('logo');

