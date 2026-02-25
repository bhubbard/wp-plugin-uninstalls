<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('statsfa_api_key');
delete_site_option('statsfa_api_key');
delete_option('statsfa_delete_on_uninstall');
delete_site_option('statsfa_delete_on_uninstall');

