<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('seacp-admin-notice');
delete_site_transient('seacp-admin-notice');
delete_transient('seacp-version-admin-notice');
delete_site_transient('seacp-version-admin-notice');

