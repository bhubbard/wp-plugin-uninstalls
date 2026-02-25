<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccsm_settings');
delete_site_option('ccsm_settings');
delete_option('ccsm_ga_notice');
delete_site_option('ccsm_ga_notice');

// Delete Transients
delete_transient('ccsm_review');
delete_site_transient('ccsm_review');

