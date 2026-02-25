<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grupnpf_enable_debug_logging');
delete_site_option('grupnpf_enable_debug_logging');
delete_option('grupnpf_ime_prejemnika');
delete_site_option('grupnpf_ime_prejemnika');
delete_option('grupnpf_ulica_prejemnika');
delete_site_option('grupnpf_ulica_prejemnika');
delete_option('grupnpf_posta_prejemnika');
delete_site_option('grupnpf_posta_prejemnika');
delete_option('grupnpf_kraj_prejemnika');
delete_site_option('grupnpf_kraj_prejemnika');
delete_option('grupnpf_iban_prejemnika');
delete_site_option('grupnpf_iban_prejemnika');
delete_option('grupnpf_koda_namena');
delete_site_option('grupnpf_koda_namena');
delete_option('grupnpf_referenca_prejemnika');
delete_site_option('grupnpf_referenca_prejemnika');
delete_option('grupnpf_namen_placila');
delete_site_option('grupnpf_namen_placila');
delete_option('grupnpf_predpona_upn_slike');
delete_site_option('grupnpf_predpona_upn_slike');

// Delete Transients
delete_transient('grupnpf_admin_notice');
delete_site_transient('grupnpf_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('grupnpf_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_grupnpf_upn_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_grupnpf_upn_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_grupnpf_upn_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_grupnpf_upn_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_grupnpf_upn_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_grupnpf_upn_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_grupnpf_upn_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_grupnpf_upn_path' ) );

