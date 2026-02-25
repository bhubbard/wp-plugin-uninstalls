<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api_set');
delete_site_option('api_set');
delete_option('project_select');
delete_site_option('project_select');

