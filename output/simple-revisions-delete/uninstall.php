<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wpsrd_settings_errors');
delete_site_transient('wpsrd_settings_errors');
delete_transient('wpsrd_norev');
delete_site_transient('wpsrd_norev');

