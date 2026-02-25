<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecfa_settings');
delete_site_option('ecfa_settings');

// Delete Transients
delete_transient('ecfa_adsense_audit_results_v8');
delete_site_transient('ecfa_adsense_audit_results_v8');
delete_transient('ecfa_adsense_audit_timestamp');
delete_site_transient('ecfa_adsense_audit_timestamp');

