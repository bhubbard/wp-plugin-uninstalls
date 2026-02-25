<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chrs_eztexting_oauth_tokens');
delete_site_option('chrs_eztexting_oauth_tokens');
delete_option('chrs_eztexting_admin_notifications');
delete_site_option('chrs_eztexting_admin_notifications');
delete_option('gravityformsaddon_chrs-eztexting-sync-for-gravityforms_settings');
delete_site_option('gravityformsaddon_chrs-eztexting-sync-for-gravityforms_settings');
delete_option('chrs_eztexting_logs');
delete_site_option('chrs_eztexting_logs');
delete_option('chrs_eztexting_failed_entries');
delete_site_option('chrs_eztexting_failed_entries');

// Delete Transients
delete_transient('chrs_eztexting_groups');
delete_site_transient('chrs_eztexting_groups');
delete_transient('chrs_eztexting_contact_fields');
delete_site_transient('chrs_eztexting_contact_fields');

