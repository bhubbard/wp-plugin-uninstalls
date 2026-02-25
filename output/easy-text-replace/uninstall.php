<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etrp_version');
delete_site_option('etrp_version');
delete_option('etrp_cache_version');
delete_site_option('etrp_cache_version');
delete_option('etrp_delete_data_on_uninstall');
delete_site_option('etrp_delete_data_on_uninstall');
delete_option('etrp_max_replacements');
delete_site_option('etrp_max_replacements');
delete_option('etrp_cache_expiration');
delete_site_option('etrp_cache_expiration');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

