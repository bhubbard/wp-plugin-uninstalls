<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grabwp_tenancy_token_error');
delete_site_option('grabwp_tenancy_token_error');

// Delete Transients
delete_transient('grabwp_tenancy_error');
delete_site_transient('grabwp_tenancy_error');

