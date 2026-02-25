<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voxycure_tracking_consent');
delete_site_option('voxycure_tracking_consent');
delete_option('voxycure_tracking_consent_declined_at');
delete_site_option('voxycure_tracking_consent_declined_at');
delete_option('voxyframe_settings');
delete_site_option('voxyframe_settings');

// Delete Transients
delete_transient('voxycure_flush_rewrite');
delete_site_transient('voxycure_flush_rewrite');

