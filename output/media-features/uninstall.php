<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('media_features_plugin_version');
delete_site_option('media_features_plugin_version');
delete_option('media_features_jpeg_quality');
delete_site_option('media_features_jpeg_quality');
delete_option('media_features_crop');
delete_site_option('media_features_crop');
delete_option('media_features_resize');
delete_site_option('media_features_resize');

