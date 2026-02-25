<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ekatco_plugin_active');
delete_site_option('ekatco_plugin_active');
delete_option('ekatco_button_text');
delete_site_option('ekatco_button_text');
delete_option('ekatco_bg_color');
delete_site_option('ekatco_bg_color');
delete_option('ekatco_text_color');
delete_site_option('ekatco_text_color');
delete_option('ekatco_button_width');
delete_site_option('ekatco_button_width');
delete_option('ekatco_button_height');
delete_site_option('ekatco_button_height');
delete_option('ekatco_padding_tb');
delete_site_option('ekatco_padding_tb');
delete_option('ekatco_button_padding_lr');
delete_site_option('ekatco_button_padding_lr');
delete_option('ekatco_button_radius');
delete_site_option('ekatco_button_radius');
delete_option('ekatco_button_font_size');
delete_site_option('ekatco_button_font_size');
delete_option('ekatco_api_keys_all');
delete_site_option('ekatco_api_keys_all');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tg_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tg_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tg_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tg_url' ) );

