<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ncr_schema_version');
delete_site_option('ncr_schema_version');
delete_option('naticore_db_version');
delete_site_option('naticore_db_version');
delete_option('naticore_settings');
delete_site_option('naticore_settings');
delete_option('naticore_remove_data_on_uninstall');
delete_site_option('naticore_remove_data_on_uninstall');
delete_option('naticore_last_integrity_check');
delete_site_option('naticore_last_integrity_check');
delete_option('naticore_last_orphaned_check');
delete_site_option('naticore_last_orphaned_check');
delete_option('naticore_orphaned_count');
delete_site_option('naticore_orphaned_count');

// Delete Transients
delete_transient('naticore_activation_notice');
delete_site_transient('naticore_activation_notice');
delete_transient('naticore_onboarding_done');
delete_site_transient('naticore_onboarding_done');
delete_transient('naticore_integrity_notice');
delete_site_transient('naticore_integrity_notice');
delete_transient('naticore_orphaned_notice_shown');
delete_site_transient('naticore_orphaned_notice_shown');

