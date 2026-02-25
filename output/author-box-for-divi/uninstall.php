<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abfd-dismiss-notice');
delete_site_option('abfd-dismiss-notice');
delete_option('abfd-dismiss-notice-rating');
delete_site_option('abfd-dismiss-notice-rating');
delete_option('abfd-option-migrate-old-networks');
delete_site_option('abfd-option-migrate-old-networks');
delete_option('abfd-option-disable-on-post-types');
delete_site_option('abfd-option-disable-on-post-types');
delete_option('abfd-option-new-tab');
delete_site_option('abfd-option-new-tab');
delete_option('abfd-option-email-icon');
delete_site_option('abfd-option-email-icon');
delete_option('abfd-option-website-icon');
delete_site_option('abfd-option-website-icon');
delete_option('abfd-option-social-icon-as-original');
delete_site_option('abfd-option-social-icon-as-original');
delete_option('abfd-option-hyperlink-author-page');
delete_site_option('abfd-option-hyperlink-author-page');
delete_option('abfd-option-guest-authors');
delete_site_option('abfd-option-guest-authors');
delete_option('abfd-option-multiple-authors');
delete_site_option('abfd-option-multiple-authors');
delete_option('abfd-option-author-posts-page-link');
delete_site_option('abfd-option-author-posts-page-link');
delete_option('abfd-option-profile-picture-link');
delete_site_option('abfd-option-profile-picture-link');
delete_option('abfd-option-author-name-link');
delete_site_option('abfd-option-author-name-link');
delete_option('abfd-option-author-box-position');
delete_site_option('abfd-option-author-box-position');
delete_option('abfd-option-exclude-categories');
delete_site_option('abfd-option-exclude-categories');
delete_option('abfd-option-name-prefix');
delete_site_option('abfd-option-name-prefix');
delete_option('abfd-option-icon-shape');
delete_site_option('abfd-option-icon-shape');
delete_option('abfd-option-icon-color');
delete_site_option('abfd-option-icon-color');
delete_option('abfd-option-link-attributes');
delete_site_option('abfd-option-link-attributes');
delete_option('abfd-option-text-color');
delete_site_option('abfd-option-text-color');
delete_option('abfd-option-background-color');
delete_site_option('abfd-option-background-color');
delete_option('abfd-option-border-color');
delete_site_option('abfd-option-border-color');
delete_option('abfd-option-border-radius');
delete_site_option('abfd-option-border-radius');
delete_option('abfd-option-border-size');
delete_site_option('abfd-option-border-size');
delete_option('abfd-option-profile-picture-position');
delete_site_option('abfd-option-profile-picture-position');
delete_option('abfd-option-profile-picture-shape');
delete_site_option('abfd-option-profile-picture-shape');
delete_option('abfd-option-profile-picture-border-color');
delete_site_option('abfd-option-profile-picture-border-color');
delete_option('abfd-option-profile-picture-border');
delete_site_option('abfd-option-profile-picture-border');
delete_option('abfd-option-font');
delete_site_option('abfd-option-font');
delete_option('abfd-option-font-size');
delete_site_option('abfd-option-font-size');
delete_option('abfd-option-hyperlink-color');
delete_site_option('abfd-option-hyperlink-color');
delete_option('abfd-option-license-key');
delete_site_option('abfd-option-license-key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abfd-user-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abfd-user-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abfd-user-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abfd-user-disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abfd-user-photograph' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abfd-user-photograph' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abfd-user-photograph' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abfd-user-photograph' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'abfd-user-social-networks-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'abfd-user-social-networks-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'abfd-user-social-networks-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'abfd-user-social-networks-%' ) );

