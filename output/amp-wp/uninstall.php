<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('amp_wp_general_settings');
delete_site_option('amp_wp_general_settings');
delete_option('amp_wp_ga');
delete_site_option('amp_wp_ga');
delete_option('amp_wp_fbp');
delete_site_option('amp_wp_fbp');
delete_option('amp_wp_sa');
delete_site_option('amp_wp_sa');
delete_option('amp_wp_qc');
delete_site_option('amp_wp_qc');
delete_option('amp_wp_acm');
delete_site_option('amp_wp_acm');
delete_option('amp_wp_cb');
delete_site_option('amp_wp_cb');
delete_option('amp_wp_comscore');
delete_site_option('amp_wp_comscore');
delete_option('amp_wp_yandex_metrica');
delete_site_option('amp_wp_yandex_metrica');
delete_option('amp_wp_afs');
delete_site_option('amp_wp_afs');
delete_option('amp_wp_adobe');
delete_site_option('amp_wp_adobe');
delete_option('amp_wp_gdpr_settings');
delete_site_option('amp_wp_gdpr_settings');
delete_option('amp_wp_layout_settings');
delete_site_option('amp_wp_layout_settings');
delete_option('amp_wp_noticebar_settings');
delete_site_option('amp_wp_noticebar_settings');
delete_option('amp_wp_social_links_settings');
delete_site_option('amp_wp_social_links_settings');
delete_option('amp_wp_structured_data_settings');
delete_site_option('amp_wp_structured_data_settings');
delete_option('amp_wp_third_party_plugins_support_settings');
delete_site_option('amp_wp_third_party_plugins_support_settings');
delete_option('amp-wp-translation');
delete_site_option('amp-wp-translation');
delete_option('WpFastestCache');
delete_site_option('WpFastestCache');
delete_option('wpb_rs/settings/snippets_in_footer');
delete_site_option('wpb_rs/settings/snippets_in_footer');

// Delete Transients
delete_transient('amp-wp-flush-rules');
delete_site_transient('amp-wp-flush-rules');
delete_transient('_amp_wp_page_welcome_redirect');
delete_site_transient('_amp_wp_page_welcome_redirect');
delete_transient('amp_wp_system_status_wp_version_check');
delete_site_transient('amp_wp_system_status_wp_version_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'disable-amp-wp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'disable-amp-wp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'disable-amp-wp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'disable-amp-wp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_amp_wp_social_share_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_amp_wp_social_share_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_amp_wp_social_share_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_amp_wp_social_share_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_amp_wp_social_share_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_amp_wp_social_share_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_amp_wp_social_share_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_amp_wp_social_share_%' ) );

