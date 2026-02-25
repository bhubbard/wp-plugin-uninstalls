<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-registration-skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-registered' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-was-registered' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('cmtoc_options');
delete_site_option('cmtoc_options');
delete_option('cmtoc_table_of_contentsOnlySingle');
delete_site_option('cmtoc_table_of_contentsOnlySingle');
delete_option('cmtoc_table_of_contentOnMainQuery');
delete_site_option('cmtoc_table_of_contentOnMainQuery');
delete_option('cmtoc_table_of_contentsHeaderDescription');
delete_site_option('cmtoc_table_of_contentsHeaderDescription');
delete_option('cmtoc_table_of_contentsLevel0Tag');
delete_site_option('cmtoc_table_of_contentsLevel0Tag');
delete_option('cmtoc_table_of_contentsLevel0Class');
delete_site_option('cmtoc_table_of_contentsLevel0Class');
delete_option('cmtoc_table_of_contentsLevel0Id');
delete_site_option('cmtoc_table_of_contentsLevel0Id');
delete_option('cmtoc_table_of_contentsLevel1Tag');
delete_site_option('cmtoc_table_of_contentsLevel1Tag');
delete_option('cmtoc_table_of_contentsLevel1Class');
delete_site_option('cmtoc_table_of_contentsLevel1Class');
delete_option('cmtoc_table_of_contentsLevel1Id');
delete_site_option('cmtoc_table_of_contentsLevel1Id');
delete_option('cmtoc_table_of_contentsLevel2Tag');
delete_site_option('cmtoc_table_of_contentsLevel2Tag');
delete_option('cmtoc_table_of_contentsLevel2Class');
delete_site_option('cmtoc_table_of_contentsLevel2Class');
delete_option('cmtoc_table_of_contentsLevel2Id');
delete_site_option('cmtoc_table_of_contentsLevel2Id');
delete_option('cmtoc_table_of_contentsLevel3Tag');
delete_site_option('cmtoc_table_of_contentsLevel3Tag');
delete_option('cmtoc_table_of_contentsLevel3Class');
delete_site_option('cmtoc_table_of_contentsLevel3Class');
delete_option('cmtoc_table_of_contentsLevel3Id');
delete_site_option('cmtoc_table_of_contentsLevel3Id');
delete_option('cmtoc_table_of_contentsLevel4Tag');
delete_site_option('cmtoc_table_of_contentsLevel4Tag');
delete_option('cmtoc_table_of_contentsLevel4Class');
delete_site_option('cmtoc_table_of_contentsLevel4Class');
delete_option('cmtoc_table_of_contentsLevel4Id');
delete_site_option('cmtoc_table_of_contentsLevel4Id');
delete_option('cmtoc_table_of_contentsLevel5Tag');
delete_site_option('cmtoc_table_of_contentsLevel5Tag');
delete_option('cmtoc_table_of_contentsLevel5Class');
delete_site_option('cmtoc_table_of_contentsLevel5Class');
delete_option('cmtoc_table_of_contentsLevel5Id');
delete_site_option('cmtoc_table_of_contentsLevel5Id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_table_of_content_disable_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_table_of_content_disable_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_table_of_content_disable_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_table_of_content_disable_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_table_of_content_disable_table_of_content_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_table_of_content_disable_table_of_content_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_table_of_content_disable_table_of_content_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_table_of_content_disable_table_of_content_for_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'edit_table_of_content_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'edit_table_of_content_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'edit_table_of_content_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'edit_table_of_content_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cmtoc_use_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cmtoc_use_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cmtoc_use_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cmtoc_use_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cmtoc_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cmtoc_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cmtoc_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cmtoc_custom_selectors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_table_of_content_auto_shortcode_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_table_of_content_auto_shortcode_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_table_of_content_auto_shortcode_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_table_of_content_auto_shortcode_disable' ) );

