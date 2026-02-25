<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lfaf_expiration_date');
delete_site_option('lfaf_expiration_date');
delete_option('lfaf_included_post_types');
delete_site_option('lfaf_included_post_types');
delete_option('lfaf_clear_ignored');
delete_site_option('lfaf_clear_ignored');
delete_option('wp_archive_updater_ignored');
delete_site_option('wp_archive_updater_ignored');
delete_option('Y-m-d');
delete_site_option('Y-m-d');

// Delete Transients
delete_transient('wp_archive_updater_todays_page');
delete_site_transient('wp_archive_updater_todays_page');

