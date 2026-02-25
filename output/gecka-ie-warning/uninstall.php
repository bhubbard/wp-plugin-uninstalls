<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iew_version');
delete_site_option('iew_version');
delete_option('iew_delay');
delete_site_option('iew_delay');

