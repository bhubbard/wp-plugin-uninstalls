<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('role_based_tax_exclusion_selected_roles');
delete_site_option('role_based_tax_exclusion_selected_roles');

