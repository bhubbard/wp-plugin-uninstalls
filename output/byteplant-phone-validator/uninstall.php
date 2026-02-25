<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bppv-api-key-invalid');
delete_site_option('bppv-api-key-invalid');
delete_option('bppvp_settings');
delete_site_option('bppvp_settings');

