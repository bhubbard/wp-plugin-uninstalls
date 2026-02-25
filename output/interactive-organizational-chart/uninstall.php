<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inteorch_settings');
delete_site_option('inteorch_settings');
delete_option('inteorch_version');
delete_site_option('inteorch_version');

