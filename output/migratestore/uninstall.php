<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('migratestore_import_success');
delete_site_transient('migratestore_import_success');
delete_transient('migratestore_import_error');
delete_site_transient('migratestore_import_error');

