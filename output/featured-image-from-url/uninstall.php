<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fifu_su_privkey');
delete_site_option('fifu_su_privkey');
delete_option('fifu_su_email');
delete_site_option('fifu_su_email');
delete_option('fifu_proxy_auth');
delete_site_option('fifu_proxy_auth');
delete_option('fifu_cloud_upload_auto_code');
delete_site_option('fifu_cloud_upload_auto_code');
delete_option('fifu_cloud_delete_auto_code');
delete_site_option('fifu_cloud_delete_auto_code');
delete_option('fifu_fake_stop');
delete_site_option('fifu_fake_stop');
delete_option('fifu_data_clean');
delete_site_option('fifu_data_clean');
delete_option('fifu_run_delete_all');
delete_site_option('fifu_run_delete_all');
delete_option('fifu_debug');
delete_site_option('fifu_debug');
delete_option('fifu_skip');
delete_site_option('fifu_skip');
delete_option('fifu_html_cpt');
delete_site_option('fifu_html_cpt');
delete_option('fifu_ovw_first');
delete_site_option('fifu_ovw_first');
delete_option('fifu_get_first');
delete_site_option('fifu_get_first');
delete_option('fifu_pcontent_add');
delete_site_option('fifu_pcontent_add');
delete_option('fifu_pcontent_remove');
delete_site_option('fifu_pcontent_remove');
delete_option('fifu_pcontent_types');
delete_site_option('fifu_pcontent_types');
delete_option('fifu_hide');
delete_site_option('fifu_hide');
delete_option('fifu_hide_type');
delete_site_option('fifu_hide_type');
delete_option('fifu_hide_format');
delete_site_option('fifu_hide_format');
delete_option('fifu_enable_default_url');
delete_site_option('fifu_enable_default_url');
delete_option('fifu_default_url');
delete_site_option('fifu_default_url');
delete_option('fifu_default_attach_id');
delete_site_option('fifu_default_attach_id');
delete_option('fifu_default_cpt');
delete_site_option('fifu_default_cpt');
delete_option('fifu_fake');
delete_site_option('fifu_fake');
delete_option('fifu_cdn_content');
delete_site_option('fifu_cdn_content');
delete_option('fifu_photon');
delete_site_option('fifu_photon');
delete_option('fifu_square_desktop');
delete_site_option('fifu_square_desktop');
delete_option('fifu_square_mobile');
delete_site_option('fifu_square_mobile');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fifu_defined_size_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fifu_wc_lbox');
delete_site_option('fifu_wc_lbox');
delete_option('fifu_wc_zoom');
delete_site_option('fifu_wc_zoom');
delete_option('fifu_first_activation');
delete_site_option('fifu_first_activation');
delete_option('fifu_run_delete_all_time');
delete_site_option('fifu_run_delete_all_time');
delete_option('fifu_fake_attach_id');
delete_site_option('fifu_fake_attach_id');
delete_option('fifu_stats_date');
delete_site_option('fifu_stats_date');
delete_option('fifu_cloud_upload_auto');
delete_site_option('fifu_cloud_upload_auto');
delete_option('fifu_cloud_delete_auto');
delete_site_option('fifu_cloud_delete_auto');
delete_option('fifu_cloud_hotlink');
delete_site_option('fifu_cloud_hotlink');
delete_option('fifu_reset');
delete_site_option('fifu_reset');
delete_option('fifu_installed_time');
delete_site_option('fifu_installed_time');
delete_option('fifu_review_snooze_until');
delete_site_option('fifu_review_snooze_until');
delete_option('fifu_review_done');
delete_site_option('fifu_review_done');
delete_option('fifu_key');
delete_site_option('fifu_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_expiration' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fifu_author');
delete_site_option('fifu_author');

// Delete Transients
delete_transient('fifu_stats_cdn_count');
delete_site_transient('fifu_stats_cdn_count');
delete_transient('fifu_redirect_to_settings');
delete_site_transient('fifu_redirect_to_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('fifu_create_cloud_upload_auto_event');
wp_clear_scheduled_hook('fifu_create_cloud_delete_auto_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fifu_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fifu_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fifu_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fifu_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fifu_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fifu_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fifu_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fifu_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slimg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slimg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slimg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slimg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

