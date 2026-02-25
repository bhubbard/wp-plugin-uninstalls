<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snordiansh5pcontenttyperepositorymanager_defaults_set');
delete_site_option('snordiansh5pcontenttyperepositorymanager_defaults_set');
delete_option('snordiansh5pcontenttyperepositorymanager_option');
delete_site_option('snordiansh5pcontenttyperepositorymanager_option');

// Clear Cron Jobs
wp_clear_scheduled_hook('snordiansh5pcontenttyperepositorymanager_update_libraries');

