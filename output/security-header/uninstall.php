<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inspiredmonks_security_header_options');
delete_site_option('inspiredmonks_security_header_options');
delete_option('inspiredmonks_security_header_version');
delete_site_option('inspiredmonks_security_header_version');

// Delete Transients
delete_transient('inspiredmonks_header_validation_errors');
delete_site_transient('inspiredmonks_header_validation_errors');

