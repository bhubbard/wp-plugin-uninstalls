<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tinyjpfont_check_cdn');
delete_site_option('tinyjpfont_check_cdn');
delete_option('tinyjpfont_select');
delete_site_option('tinyjpfont_select');
delete_option('tinyjpfont_gutenberg');
delete_site_option('tinyjpfont_gutenberg');
delete_option('tinyjpfont_head');
delete_site_option('tinyjpfont_head');
delete_option('tinyjpfont_default_font');
delete_site_option('tinyjpfont_default_font');
delete_option('tinyjpfont_whole_font');
delete_site_option('tinyjpfont_whole_font');
delete_option('tinyjpfont_check_noto');
delete_site_option('tinyjpfont_check_noto');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tinyjpfont_fix430_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tinyjpfont_fix430_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tinyjpfont_fix430_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tinyjpfont_fix430_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tinyjpfont_gutenberg_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tinyjpfont_gutenberg_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tinyjpfont_gutenberg_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tinyjpfont_gutenberg_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tinyjpfont_install_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tinyjpfont_install_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tinyjpfont_install_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tinyjpfont_install_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tinyjpfont_advanced_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tinyjpfont_advanced_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tinyjpfont_advanced_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tinyjpfont_advanced_warning_dismissed' ) );

