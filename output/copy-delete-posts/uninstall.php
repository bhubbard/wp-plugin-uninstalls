<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_cdp_cool_installation');
delete_site_option('_cdp_cool_installation');
delete_option('_cdp_redirect');
delete_site_option('_cdp_redirect');
delete_option('wp_mypopups_do_activation_redirect');
delete_site_option('wp_mypopups_do_activation_redirect');
delete_option('sfsi_plugin_do_activation_redirect');
delete_site_option('sfsi_plugin_do_activation_redirect');
delete_option('_bmi_redirect');
delete_site_option('_bmi_redirect');
delete_option('irrp_activation_redirect');
delete_site_option('irrp_activation_redirect');
delete_option('_cdp_globals');
delete_site_option('_cdp_globals');
delete_option('_cdp_review');
delete_site_option('_cdp_review');
delete_option('_cdp_mishmash');
delete_site_option('_cdp_mishmash');
delete_option('_cdp_profiles');
delete_site_option('_cdp_profiles');
delete_option('_cdp_show_copy');
delete_site_option('_cdp_show_copy');
delete_option('_cdp_crons');
delete_site_option('_cdp_crons');
delete_option('_cdp_default_setup');
delete_site_option('_cdp_default_setup');
delete_option('_tifm_feature_enabled');
delete_site_option('_tifm_feature_enabled');
delete_option('_tifm_disable_feature_forever');
delete_site_option('_tifm_disable_feature_forever');
delete_option('_tifm_hide_notice_forever');
delete_site_option('_tifm_hide_notice_forever');
delete_option('_cdp_no_intro');
delete_site_option('_cdp_no_intro');
delete_option('_cdp_preselections');
delete_site_option('_cdp_preselections');
delete_option('cdp_dismiss_perf_notice');
delete_site_option('cdp_dismiss_perf_notice');
delete_option('cdp_latest_slow_performance');
delete_site_option('cdp_latest_slow_performance');
delete_option('cdp_copy_logs_times');
delete_site_option('cdp_copy_logs_times');
delete_option('_irb_h_bn_review');
delete_site_option('_irb_h_bn_review');
delete_option('hide_tastewp_notice');
delete_site_option('hide_tastewp_notice');
delete_option('_tifm_force_disable_feature_update');
delete_site_option('_tifm_force_disable_feature_update');

// Clear Cron Jobs
wp_clear_scheduled_hook('cdp_cron_delete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cdp_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cdp_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cdp_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cdp_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cdp_origin_site' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cdp_origin_site' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cdp_origin_site' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cdp_origin_site' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );

