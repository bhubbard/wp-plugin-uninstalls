<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbst_settings');
delete_site_option('dbst_settings');
delete_option('devbrothers_version');
delete_site_option('devbrothers_version');
delete_option('devbrothers_settings');
delete_site_option('devbrothers_settings');

// Delete Transients
delete_transient('devbrothers_plugins_cache');
delete_site_transient('devbrothers_plugins_cache');

