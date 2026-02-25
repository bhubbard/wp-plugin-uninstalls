<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('askai_option');
delete_site_option('askai_option');
delete_option('askai_status');
delete_site_option('askai_status');
delete_option('weglot_settings');
delete_site_option('weglot_settings');

// Delete Transients
delete_transient('oauth_nonce');
delete_site_transient('oauth_nonce');

