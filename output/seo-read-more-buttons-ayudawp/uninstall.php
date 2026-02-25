<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srmb_ayudawp_options');
delete_site_option('srmb_ayudawp_options');

// Delete Transients
delete_transient('srmb_ayudawp_validation_error');
delete_site_transient('srmb_ayudawp_validation_error');

