<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jeeng_scripts_toggle');
delete_site_option('jeeng_scripts_toggle');
delete_option('jeeng_client_id');
delete_site_option('jeeng_client_id');

