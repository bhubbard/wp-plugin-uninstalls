<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpm_tat_options');
delete_site_option('bpm_tat_options');
delete_option('tat_options');
delete_site_option('tat_options');

// Delete Transients
delete_transient('tat_settings_cache');
delete_site_transient('tat_settings_cache');

