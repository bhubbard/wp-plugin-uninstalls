<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf-image-ai-api-key');
delete_site_option('cf-image-ai-api-key');
delete_option('cf-images-api-token');
delete_site_option('cf-images-api-token');
delete_option('cf-images-account-id');
delete_site_option('cf-images-account-id');
delete_option('cf-images-auth-error');
delete_site_option('cf-images-auth-error');
delete_option('cf-images-version');
delete_site_option('cf-images-version');
delete_option('cf-images-install-notice');
delete_site_option('cf-images-install-notice');
delete_option('cf-images-settings');
delete_site_option('cf-images-settings');
delete_option('cf-images-custom-domain');
delete_site_option('cf-images-custom-domain');
delete_option('cf-images-hide-sidebar');
delete_site_option('cf-images-hide-sidebar');
delete_option('cf-images-cdn-enabled');
delete_site_option('cf-images-cdn-enabled');
delete_option('cf-images-browser-ttl');
delete_site_option('cf-images-browser-ttl');
delete_option('cf-images-custom-path');
delete_site_option('cf-images-custom-path');
delete_option('cf-images-setup-done');
delete_site_option('cf-images-setup-done');
delete_option('cf-images-config-written');
delete_site_option('cf-images-config-written');
delete_option('cf-images-hash');
delete_site_option('cf-images-hash');
delete_option('cf-images-integrations');
delete_site_option('cf-images-integrations');
delete_option('cf-images-stats');
delete_site_option('cf-images-stats');
delete_option('cf-images-network-wide');
delete_site_option('cf-images-network-wide');
delete_option('cf-images-auto-offload');
delete_site_option('cf-images-auto-offload');
delete_option('cf-images-auto-resize');
delete_site_option('cf-images-auto-resize');
delete_option('cf-images-custom-id');
delete_site_option('cf-images-custom-id');
delete_option('cf-images-disable-async');
delete_site_option('cf-images-disable-async');
delete_option('cf-images-disable-generation');
delete_site_option('cf-images-disable-generation');
delete_option('cf-images-full-offload');
delete_site_option('cf-images-full-offload');
delete_option('cf-images-image-ai');
delete_site_option('cf-images-image-ai');
delete_option('cf-images-page-parser');
delete_site_option('cf-images-page-parser');
delete_option('cf-images-image-compress');
delete_site_option('cf-images-image-compress');

// Delete Transients
delete_transient('cf-images-admin-redirect');
delete_site_transient('cf-images-admin-redirect');
delete_transient('cf-images-custom-path');
delete_site_transient('cf-images-custom-path');

// Clear Cron Jobs
wp_clear_scheduled_hook('cf_images_cdn_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cloudflare_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cloudflare_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cloudflare_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cloudflare_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cloudflare_image_offloaded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cloudflare_image_offloaded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cloudflare_image_offloaded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cloudflare_image_offloaded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cloudflare_image_skip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cloudflare_image_skip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cloudflare_image_skip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cloudflare_image_skip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cf_images_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cf_images_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cf_images_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cf_images_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cf_images_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cf_images_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cf_images_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cf_images_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cf_images_skip_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cf_images_skip_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cf_images_skip_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cf_images_skip_compress' ) );

