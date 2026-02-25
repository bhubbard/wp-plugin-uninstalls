<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theme_mods_enigma');
delete_site_option('theme_mods_enigma');
delete_option('enigma_options');
delete_site_option('enigma_options');
delete_option('weblizar_options');
delete_site_option('weblizar_options');
delete_option('creative_general_options');
delete_site_option('creative_general_options');
delete_option('explora_options');
delete_site_option('explora_options');
delete_option('guardian_options');
delete_site_option('guardian_options');
delete_option('health_options');
delete_site_option('health_options');
delete_option('scoreline_options');
delete_site_option('scoreline_options');
delete_option('chronicle_theme_options');
delete_site_option('chronicle_theme_options');
delete_option('green-lantern_options_gl');
delete_site_option('green-lantern_options_gl');
delete_option('free_theme_data');
delete_site_option('free_theme_data');
delete_option('enigma_options_pro');
delete_site_option('enigma_options_pro');
delete_option('nineteen_theme_front_page');
delete_site_option('nineteen_theme_front_page');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

