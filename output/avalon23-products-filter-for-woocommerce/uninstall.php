<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avalon23_settings');
delete_site_option('avalon23_settings');
delete_option('avalon23_current_version');
delete_site_option('avalon23_current_version');
delete_option('avalon23_db_ver');
delete_site_option('avalon23_db_ver');
delete_option('avalon23_seo');
delete_site_option('avalon23_seo');
delete_option('avalon23_seo_settings');
delete_site_option('avalon23_seo_settings');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');

// Clear Cron Jobs
wp_clear_scheduled_hook('avalon23_cache_count_data_auto_clean');

