<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpinv_settings_coinsnap_webhook');
delete_site_option('wpinv_settings_coinsnap_webhook');

