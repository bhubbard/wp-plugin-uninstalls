<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storychief_acf_definitions');
delete_site_option('storychief_acf_definitions');
delete_option('storychief_acf_mapping');
delete_site_option('storychief_acf_mapping');

