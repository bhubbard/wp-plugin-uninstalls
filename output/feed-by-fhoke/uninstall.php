<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbf_settings');
delete_site_option('fbf_settings');

// Delete Transients
delete_transient('fbf_access_token');
delete_site_transient('fbf_access_token');
delete_transient('fbf_access_token_expiry');
delete_site_transient('fbf_access_token_expiry');
delete_transient('fbf_media');
delete_site_transient('fbf_media');

