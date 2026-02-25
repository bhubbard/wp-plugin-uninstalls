<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbvmfp_peertube_url');
delete_site_option('cbvmfp_peertube_url');
delete_option('cbvmfp_peertube_anzahl_videos');
delete_site_option('cbvmfp_peertube_anzahl_videos');
delete_option('cbvmfp_peertube_channel');
delete_site_option('cbvmfp_peertube_channel');
delete_option('cbvmfp_livestream_fallback_type');
delete_site_option('cbvmfp_livestream_fallback_type');
delete_option('cbvmfp_livestream_fallback_image');
delete_site_option('cbvmfp_livestream_fallback_image');
delete_option('cbvmfp_livestream_fallback_video');
delete_site_option('cbvmfp_livestream_fallback_video');

