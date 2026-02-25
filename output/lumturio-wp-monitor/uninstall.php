<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lumturio_site_uuid');
delete_site_option('lumturio_site_uuid');
delete_option('lumturio_site_encryption_token');
delete_site_option('lumturio_site_encryption_token');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

