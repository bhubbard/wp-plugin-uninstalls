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
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'premmerce_seo_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('premmerce_seo_settings_brand_field');
delete_site_option('premmerce_seo_settings_brand_field');
delete_option('premmerce_seo_brand_field');
delete_site_option('premmerce_seo_brand_field');
delete_option('premmerce_seo_settings_markup_tc');
delete_site_option('premmerce_seo_settings_markup_tc');
delete_option('premmerce_seo_settings_markup_ld');
delete_site_option('premmerce_seo_settings_markup_ld');
delete_option('premmerce_seo_settings_markup_og');
delete_site_option('premmerce_seo_settings_markup_og');
delete_option('premmerce_seo_settings_image_alts');
delete_site_option('premmerce_seo_settings_image_alts');
delete_option('premmerce_seo_db_version');
delete_site_option('premmerce_seo_db_version');
delete_option('premmerce_seo_address');
delete_site_option('premmerce_seo_address');
delete_option('premmerce_seo_email');
delete_site_option('premmerce_seo_email');
delete_option('premmerce_seo_telephone');
delete_site_option('premmerce_seo_telephone');
delete_option('premmerce_seo_openingHours');
delete_site_option('premmerce_seo_openingHours');
delete_option('premmerce_seo_paymentAccepted');
delete_site_option('premmerce_seo_paymentAccepted');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

