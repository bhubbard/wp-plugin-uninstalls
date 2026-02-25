<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_login_crendentials');
delete_site_option('social_login_crendentials');
delete_option('tpsa_admin-bar_pro_fields');
delete_site_option('tpsa_admin-bar_pro_fields');
delete_option('tp_admin_safety_guard_deactivate_token');
delete_site_option('tp_admin_safety_guard_deactivate_token');
delete_option('tpsa_version');
delete_site_option('tpsa_version');
delete_option('tpsm_is_setup_wizard');
delete_site_option('tpsm_is_setup_wizard');

// Delete Transients
delete_transient('tpsm_do_activation_redirect');
delete_site_transient('tpsm_do_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('remove_old_block_users_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tpsa_otp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tpsa_otp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tpsa_otp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tpsa_otp_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );

