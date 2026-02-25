<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagespeedninja_config');
delete_site_option('pagespeedninja_config');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('pagespeedninja_dismiss_licensekey_notice');
delete_site_transient('pagespeedninja_dismiss_licensekey_notice');
delete_transient('pagespeedninja_psi_scores');
delete_site_transient('pagespeedninja_psi_scores');
delete_transient('pagespeedninja_activated');
delete_site_transient('pagespeedninja_activated');
delete_transient('pagespeedninja_show_tour');
delete_site_transient('pagespeedninja_show_tour');

// Clear Cron Jobs
wp_clear_scheduled_hook('pagespeedninja_daily_event');

