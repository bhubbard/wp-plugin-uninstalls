<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phpcm_early_loading_enabled');
delete_site_option('phpcm_early_loading_enabled');
delete_option('phpcm_db_version');
delete_site_option('phpcm_db_version');

// Delete Transients
delete_transient('phpcm_db_error');
delete_site_transient('phpcm_db_error');
delete_transient('phpcm_load_error');
delete_site_transient('phpcm_load_error');
delete_transient('phpcm_admin_notice');
delete_site_transient('phpcm_admin_notice');
delete_transient('phpcm_import_errors');
delete_site_transient('phpcm_import_errors');

