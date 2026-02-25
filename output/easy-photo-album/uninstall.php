<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EasyPhotoAlbum');
delete_site_option('EasyPhotoAlbum');
delete_option('epa_update_fields');
delete_site_option('epa_update_fields');
delete_option('EasyPhotoAlbumVersion');
delete_site_option('EasyPhotoAlbumVersion');

// Delete Transients
delete_transient('epa_download_count');
delete_site_transient('epa_download_count');

