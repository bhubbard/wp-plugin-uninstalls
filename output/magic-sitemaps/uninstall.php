<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('insfires_smwp');
delete_site_option('insfires_smwp');
delete_option('smwp_options');
delete_site_option('smwp_options');

