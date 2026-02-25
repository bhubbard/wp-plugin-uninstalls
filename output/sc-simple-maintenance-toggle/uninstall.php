<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SC_Simple_Maintenance_Toggle_options');
delete_site_option('SC_Simple_Maintenance_Toggle_options');

