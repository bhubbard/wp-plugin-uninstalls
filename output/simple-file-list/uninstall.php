<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eeSFL_Confirm');
delete_site_option('eeSFL_Confirm');
delete_option('eeSFL_FileList_1');
delete_site_option('eeSFL_FileList_1');
delete_option('eeSFL_FREE_DB_Version');
delete_site_option('eeSFL_FREE_DB_Version');
delete_option('eeSFL_BASE_Version');
delete_site_option('eeSFL_BASE_Version');
delete_option('eeSFL-1-ShowList');
delete_site_option('eeSFL-1-ShowList');
delete_option('eeSFL-Settings');
delete_site_option('eeSFL-Settings');
delete_option('eeSFL_Settings_1');
delete_site_option('eeSFL_Settings_1');
delete_option('eeSFL-1-ShowFileThumb');
delete_site_option('eeSFL-1-ShowFileThumb');
delete_option('eeSFL-1-ShowFileDate');
delete_site_option('eeSFL-1-ShowFileDate');
delete_option('eeSFL-1-ShowFileOwner');
delete_site_option('eeSFL-1-ShowFileOwner');
delete_option('eeSFL-1-ShowFileSize');
delete_site_option('eeSFL-1-ShowFileSize');
delete_option('eeSFL-1-SortBy');
delete_site_option('eeSFL-1-SortBy');
delete_option('eeSFL-1-SortOrder');
delete_site_option('eeSFL-1-SortOrder');
delete_option('eeSFL-1-ShowFileActions');
delete_site_option('eeSFL-1-ShowFileActions');
delete_option('eeSFL-1-ShowListHeader');
delete_site_option('eeSFL-1-ShowListHeader');
delete_option('eeSFL-1-AllowFrontDelete');
delete_site_option('eeSFL-1-AllowFrontDelete');
delete_option('eeSFL-1-UploadDir');
delete_site_option('eeSFL-1-UploadDir');
delete_option('eeSFL-1-AllowUploads');
delete_site_option('eeSFL-1-AllowUploads');
delete_option('eeSFL-1-FileFormats');
delete_site_option('eeSFL-1-FileFormats');
delete_option('eeSFL-1-UploadLimit');
delete_site_option('eeSFL-1-UploadLimit');
delete_option('eeSFL-1-UploadMaxFileSize');
delete_site_option('eeSFL-1-UploadMaxFileSize');
delete_option('eeSFL-1-GetUploaderInfo');
delete_site_option('eeSFL-1-GetUploaderInfo');
delete_option('eeSFL-1-Notify');
delete_site_option('eeSFL-1-Notify');
delete_option('eeSFL-FileList-1');
delete_site_option('eeSFL-FileList-1');
delete_option('eeSFL-Log');
delete_site_option('eeSFL-Log');
delete_option('eeSFL_BASE_Log');
delete_site_option('eeSFL_BASE_Log');
delete_option('eeSFL-Version');
delete_site_option('eeSFL-Version');
delete_option('eeSFL-DB-Version');
delete_site_option('eeSFL-DB-Version');
delete_option('eeSFL_FREE_Log');
delete_site_option('eeSFL_FREE_Log');
delete_option('eeSFLA-Settings');
delete_site_option('eeSFLA-Settings');
delete_option('eeSFL-Legacy');
delete_site_option('eeSFL-Legacy');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eeSFL_Settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eeSFL_Supported');
delete_site_option('eeSFL_Supported');
delete_option('eeSFL_TheLog');
delete_site_option('eeSFL_TheLog');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eeSFL_FileList_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eeSFL_Tasks');
delete_site_option('eeSFL_Tasks');

// Delete Transients
delete_transient('eeSFL-1-FileListDirCheck');
delete_site_transient('eeSFL-1-FileListDirCheck');
delete_transient('eeSFL_FileList_1');
delete_site_transient('eeSFL_FileList_1');
delete_transient('eeSFL_FileList-1');
delete_site_transient('eeSFL_FileList-1');

