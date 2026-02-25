<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ebook_download_db_version');
delete_site_option('ebook_download_db_version');
delete_option('ebookdownload_lang_name');
delete_site_option('ebookdownload_lang_name');
delete_option('ebookdownload_lang_email');
delete_site_option('ebookdownload_lang_email');
delete_option('ebookdownload_lang_emailwrong');
delete_site_option('ebookdownload_lang_emailwrong');
delete_option('ebookdownload_lang_download');
delete_site_option('ebookdownload_lang_download');
delete_option('ebookdownload_lang_thankyou');
delete_site_option('ebookdownload_lang_thankyou');
delete_option('ebookdownload_lang_downloadmessage');
delete_site_option('ebookdownload_lang_downloadmessage');
delete_option('ebookdownload_lang_emailenterwrong');
delete_site_option('ebookdownload_lang_emailenterwrong');
delete_option('ebookdownload_lang_emailrequired');
delete_site_option('ebookdownload_lang_emailrequired');
delete_option('widget_ebook_download');
delete_site_option('widget_ebook_download');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebookdownloadurl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebookdownloadurl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebookdownloadurl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebookdownloadurl' ) );

