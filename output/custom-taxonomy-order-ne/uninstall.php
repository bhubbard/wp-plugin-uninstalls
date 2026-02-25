<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customtaxorder_settings');
delete_site_option('customtaxorder_settings');
delete_option('customtaxorder_taxonomies');
delete_site_option('customtaxorder_taxonomies');

// Delete Transients
delete_transient('customtaxorder_get_settings');
delete_site_transient('customtaxorder_get_settings');

