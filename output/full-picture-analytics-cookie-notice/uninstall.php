<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fupi_versions');
delete_site_option('fupi_versions');
delete_option('fupi_tools');
delete_site_option('fupi_tools');
delete_option('fupi_reports');
delete_site_option('fupi_reports');
delete_option('fupi_main');
delete_site_option('fupi_main');
delete_option('fupi_proofrec');
delete_site_option('fupi_proofrec');
delete_option('fupi_cook');
delete_site_option('fupi_cook');
delete_option('fupi_pla');
delete_site_option('fupi_pla');
delete_option('fupi_atrig');
delete_site_option('fupi_atrig');
delete_option('fupi_track');
delete_site_option('fupi_track');
delete_option('fupi_cscr');
delete_site_option('fupi_cscr');
delete_option('fupi_reactions');
delete_site_option('fupi_reactions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fupi_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fupi_cegg');
delete_site_option('fupi_cegg');
delete_option('fupi_clar');
delete_site_option('fupi_clar');
delete_option('fupi_cookie_notice');
delete_site_option('fupi_cookie_notice');
delete_option('fupi_fbp1');
delete_site_option('fupi_fbp1');
delete_option('fupi_ga41');
delete_site_option('fupi_ga41');
delete_option('fupi_gads');
delete_site_option('fupi_gads');
delete_option('fupi_gtag');
delete_site_option('fupi_gtag');
delete_option('fupi_gtm');
delete_site_option('fupi_gtm');
delete_option('fupi_hotj');
delete_site_option('fupi_hotj');
delete_option('fupi_insp');
delete_site_option('fupi_insp');
delete_option('fupi_linkd');
delete_site_option('fupi_linkd');
delete_option('fupi_mads');
delete_site_option('fupi_mads');
delete_option('fupi_mato');
delete_site_option('fupi_mato');
delete_option('fupi_pin');
delete_site_option('fupi_pin');
delete_option('fupi_posthog');
delete_site_option('fupi_posthog');
delete_option('fupi_simpl');
delete_site_option('fupi_simpl');
delete_option('fupi_tik');
delete_site_option('fupi_tik');
delete_option('fupi_twit');
delete_site_option('fupi_twit');
delete_option('fupi_woo');
delete_site_option('fupi_woo');
delete_option('woocommerce_feature_order_attribution_enabled');
delete_site_option('woocommerce_feature_order_attribution_enabled');
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
delete_option('fupi_activation_redirect');
delete_site_option('fupi_activation_redirect');
delete_option('fupi_ga42');
delete_site_option('fupi_ga42');

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
wp_clear_scheduled_hook('fupi_consents_backup_cron_event');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fupi_adv_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fupi_adv_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fupi_adv_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fupi_adv_mode' ) );

