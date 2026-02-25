<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfewp_checkout_fields_settings');
delete_site_option('cfewp_checkout_fields_settings');

// Delete Transients
delete_transient('cfewp_activated');
delete_site_transient('cfewp_activated');

