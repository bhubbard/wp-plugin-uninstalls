<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmw_disable_classic_widgets_alert');
delete_site_option('gmw_disable_classic_widgets_alert');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Delete Transients
delete_transient('gmw_pointers');
delete_site_transient('gmw_pointers');

// Clear Cron Jobs
wp_clear_scheduled_hook('gmw_biweekly_cron');

