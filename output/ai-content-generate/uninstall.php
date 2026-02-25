<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dowp_aicg_settings');
delete_site_option('dowp_aicg_settings');

// Delete Transients
delete_transient('dowp_options');
delete_site_transient('dowp_options');

