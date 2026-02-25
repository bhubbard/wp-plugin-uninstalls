<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpippDisplay_visible_enabled');
delete_site_option('wpippDisplay_visible_enabled');
delete_option('wpippDisplay_watermark_on_size');
delete_site_option('wpippDisplay_watermark_on_size');
delete_option('wpippDisplay_watermark_text');
delete_site_option('wpippDisplay_watermark_text');
delete_option('wpippDisplay_watermark_text_font');
delete_site_option('wpippDisplay_watermark_text_font');
delete_option('wpippDisplay_watermark_text_size');
delete_site_option('wpippDisplay_watermark_text_size');
delete_option('wpippDisplay_watermark_text_colour');
delete_site_option('wpippDisplay_watermark_text_colour');
delete_option('wpippDisplay_watermark_text_border_width');
delete_site_option('wpippDisplay_watermark_text_border_width');
delete_option('wpippDisplay_watermark_text_background_colour');
delete_site_option('wpippDisplay_watermark_text_background_colour');
delete_option('wpippDisplay_wpipp_watermark_image_url');
delete_site_option('wpippDisplay_wpipp_watermark_image_url');
delete_option('wpippDisplay_watermark_position');
delete_site_option('wpippDisplay_watermark_position');
delete_option('wpippDisplay_watermark_transparency');
delete_site_option('wpippDisplay_watermark_transparency');
delete_option('wpippDisplay_caching_option');
delete_site_option('wpippDisplay_caching_option');
delete_option('wpippDisplay_hotlinking_option');
delete_site_option('wpippDisplay_hotlinking_option');
delete_option('wpippDisplay_render_option');
delete_site_option('wpippDisplay_render_option');
delete_option('wpippDisplay_watermark_scale');
delete_site_option('wpippDisplay_watermark_scale');
delete_option('wpippDisplay_debug_option');
delete_site_option('wpippDisplay_debug_option');
delete_option('wpipp_continue_install');
delete_site_option('wpipp_continue_install');
delete_option('wpipp_version');
delete_site_option('wpipp_version');
delete_option('wpipp_watermarks_not_set_ignore');
delete_site_option('wpipp_watermarks_not_set_ignore');
delete_option('wpippDisplay_htaccess_option');
delete_site_option('wpippDisplay_htaccess_option');
delete_option('wpipp_mode');
delete_site_option('wpipp_mode');
delete_option('wpipp_textdomain');
delete_site_option('wpipp_textdomain');
delete_option('wpipp_active');
delete_site_option('wpipp_active');
delete_option('wpipp_premium_install_ignore');
delete_site_option('wpipp_premium_install_ignore');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpipp_exclude_from_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpipp_exclude_from_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpipp_exclude_from_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpipp_exclude_from_watermark' ) );

