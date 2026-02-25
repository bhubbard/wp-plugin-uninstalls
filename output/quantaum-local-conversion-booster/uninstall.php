<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qlcb_settings');
delete_site_option('qlcb_settings');
delete_option('qlcb_daily_counts');
delete_site_option('qlcb_daily_counts');
delete_option('qlcb_page_counts');
delete_site_option('qlcb_page_counts');
delete_option('qlcb_variant_counts');
delete_site_option('qlcb_variant_counts');

// Delete Transients
delete_transient('qlcb_do_activation_redirect');
delete_site_transient('qlcb_do_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('qlcb_prune_counts_event');

