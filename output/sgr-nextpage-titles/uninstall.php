<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpp-hide-intro-title');
delete_site_option('mpp-hide-intro-title');
delete_option('mpp-comments-on-page');
delete_site_option('mpp-comments-on-page');
delete_option('mpp-continue-or-prev-next');
delete_site_option('mpp-continue-or-prev-next');
delete_option('mpp-disable-standard-pagination');
delete_site_option('mpp-disable-standard-pagination');
delete_option('mpp-toc-only-on-the-first-page');
delete_site_option('mpp-toc-only-on-the-first-page');
delete_option('mpp-toc-position');
delete_site_option('mpp-toc-position');
delete_option('mpp-toc-row-labels');
delete_site_option('mpp-toc-row-labels');
delete_option('mpp-hide-toc-header');
delete_site_option('mpp-hide-toc-header');
delete_option('mpp-comments-toc-link');
delete_site_option('mpp-comments-toc-link');
delete_option('_mpp-rewrite-title-priority');
delete_site_option('_mpp-rewrite-title-priority');
delete_option('_mpp-rewrite-content-priority');
delete_site_option('_mpp-rewrite-content-priority');
delete_option('mpp-disable-tinymce-buttons');
delete_site_option('mpp-disable-tinymce-buttons');
delete_option('_mpp-postmeta-built');
delete_site_option('_mpp-postmeta-built');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('_mpp_db_version');
delete_site_option('_mpp_db_version');
delete_option('multipage');
delete_site_option('multipage');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mpp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mpp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mpp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mpp_data' ) );

