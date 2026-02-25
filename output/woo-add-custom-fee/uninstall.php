<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('wacf_enable');
delete_site_option('wacf_enable');
delete_option('wacf_minimum');
delete_site_option('wacf_minimum');
delete_option('wacf_maximum');
delete_site_option('wacf_maximum');
delete_option('wacf_enable_min');
delete_site_option('wacf_enable_min');
delete_option('wacf_enable_max');
delete_site_option('wacf_enable_max');
delete_option('wacf_type');
delete_site_option('wacf_type');
delete_option('wacf_fee_label');
delete_site_option('wacf_fee_label');
delete_option('wacf_fee_charges');
delete_site_option('wacf_fee_charges');
delete_option('wacf_taxable');
delete_site_option('wacf_taxable');
delete_option('wacf_tax_class');
delete_site_option('wacf_tax_class');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

