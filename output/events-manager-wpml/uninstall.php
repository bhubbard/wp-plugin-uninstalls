<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_sync_translations_multisite_progress');
delete_site_option('dbem_sync_translations_multisite_progress');
delete_option('em_wpml_version');
delete_site_option('em_wpml_version');
delete_option('em_wpml_disable_recurrence_notice');
delete_site_option('em_wpml_disable_recurrence_notice');
delete_option('dbem_events_page');
delete_site_option('dbem_events_page');
delete_option('dbem_rsvp_enabled');
delete_site_option('dbem_rsvp_enabled');
delete_option('dbem_version');
delete_site_option('dbem_version');

