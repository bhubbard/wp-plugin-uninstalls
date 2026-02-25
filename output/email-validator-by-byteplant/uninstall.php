<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpmvp-api-key-invalid');
delete_site_option('bpmvp-api-key-invalid');
delete_option('bpmvp_settings');
delete_site_option('bpmvp_settings');

