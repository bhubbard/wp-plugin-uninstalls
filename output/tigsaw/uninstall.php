<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tigsaw_activation_redirect');
delete_site_option('tigsaw_activation_redirect');
delete_option('tigsaw_container_id');
delete_site_option('tigsaw_container_id');
delete_option('tigsaw_script_enabled');
delete_site_option('tigsaw_script_enabled');

