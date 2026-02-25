<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpjf3_maintenance_redirect_version');
delete_site_option('wpjf3_maintenance_redirect_version');

