<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'theme_mods_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('remind_me_later_bosa_pro_time');
delete_site_option('remind_me_later_bosa_pro_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'upgrade_bosa_pro_notice_dismiss_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('keon_toolset_demo_lists');
delete_site_transient('keon_toolset_demo_lists');
delete_transient('keon_toolset_theme_state_list');
delete_site_transient('keon_toolset_theme_state_list');
delete_transient('keon_toolset_bosa_common_demo_lists');
delete_site_transient('keon_toolset_bosa_common_demo_lists');
delete_transient('keon_toolset_template_lists');
delete_site_transient('keon_toolset_template_lists');
delete_transient('keon_toolset_template_state_list');
delete_site_transient('keon_toolset_template_state_list');
delete_transient('imported_option');
delete_site_transient('imported_option');
delete_transient('options.json');
delete_site_transient('options.json');
delete_transient('imported_post_ids');
delete_site_transient('imported_post_ids');
delete_transient('kt_adim_imported_post_ids');
delete_site_transient('kt_adim_imported_post_ids');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismiss_gutener_upsell_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismiss_gutener_upsell_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismiss_gutener_upsell_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismiss_gutener_upsell_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'store_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'store_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'store_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'store_notice_dismissed' ) );

