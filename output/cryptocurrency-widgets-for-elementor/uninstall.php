<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccew_initial_save_version');
delete_site_option('ccew_initial_save_version');
delete_option('ccew-install-date');
delete_site_option('ccew-install-date');
delete_option('ccew-alreadyRated');
delete_site_option('ccew-alreadyRated');
delete_option('ccew_activation_time');
delete_site_option('ccew_activation_time');
delete_option('openexchange-api-settings');
delete_site_option('openexchange-api-settings');
delete_option('cmc_coingecko_api_hits');
delete_site_option('cmc_coingecko_api_hits');
delete_option('cpfm_opt_in_choice_crypto');
delete_site_option('cpfm_opt_in_choice_crypto');
delete_option('ccew-api-settings');
delete_site_option('ccew-api-settings');
delete_option('ccew_data_save');
delete_site_option('ccew_data_save');
delete_option('ccew_api_key_expired');
delete_site_option('ccew_api_key_expired');
delete_option('CCEW_FREE_VERSION');
delete_site_option('CCEW_FREE_VERSION');
delete_option('ccew-fresh-installation');
delete_site_option('ccew-fresh-installation');
delete_option('cmc_usd_conversions');
delete_site_option('cmc_usd_conversions');
delete_option('ccew-v');
delete_site_option('ccew-v');
delete_option('ccpw_reset_flag');
delete_site_option('ccpw_reset_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('ccew-saved-coindata');
delete_site_transient('ccew-saved-coindata');
delete_transient('cmc_usd_conversions');
delete_site_transient('cmc_usd_conversions');
delete_transient('ccew_check_coin_list_after_24hour');
delete_site_transient('ccew_check_coin_list_after_24hour');

// Clear Cron Jobs
wp_clear_scheduled_hook('ccew_extra_data_update');
wp_clear_scheduled_hook('cmc_extra_data_update');
wp_clear_scheduled_hook('celp_extra_data_update');
wp_clear_scheduled_hook('ccpw_extra_data_update');

