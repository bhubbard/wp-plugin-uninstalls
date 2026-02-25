<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ratec_cf_settings');
delete_site_option('ratec_cf_settings');
delete_option('ratec_cf_activation_redirect');
delete_site_option('ratec_cf_activation_redirect');

