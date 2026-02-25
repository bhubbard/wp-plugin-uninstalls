<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprd-revision-control');
delete_site_option('wprd-revision-control');

// Delete Transients
delete_transient('wprd_norev');
delete_site_transient('wprd_norev');
delete_transient('wprd_settings_errors');
delete_site_transient('wprd_settings_errors');

