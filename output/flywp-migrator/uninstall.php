<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flywp_migrate_temp_dir');
delete_site_option('flywp_migrate_temp_dir');
delete_option('flywp_migration_key');
delete_site_option('flywp_migration_key');

// Delete Transients
delete_transient('flywp_initial_resume_interval');
delete_site_transient('flywp_initial_resume_interval');

