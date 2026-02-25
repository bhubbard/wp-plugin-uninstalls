<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pat_activated_plugins_gwl');
delete_site_option('pat_activated_plugins_gwl');
delete_option('pat_display_relative_date_gwl');
delete_site_option('pat_display_relative_date_gwl');
delete_option('pat_display_after_days_remove_record_gwl');
delete_site_option('pat_display_after_days_remove_record_gwl');

