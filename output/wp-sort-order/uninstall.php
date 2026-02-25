<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpso_activation');
delete_site_option('wpso_activation');
delete_option('wpso_extras_order');
delete_site_option('wpso_extras_order');
delete_option('wpso_options');
delete_site_option('wpso_options');

