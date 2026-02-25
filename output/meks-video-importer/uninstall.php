<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('refactored_video_importer');
delete_site_option('refactored_video_importer');
delete_option('mvi-youtube-api-key-verified');
delete_site_option('mvi-youtube-api-key-verified');
delete_option('mvi-youtube-api-key');
delete_site_option('mvi-youtube-api-key');
delete_option('mvi-vimeo-client-id');
delete_site_option('mvi-vimeo-client-id');
delete_option('mvi-vimeo-client-secret');
delete_site_option('mvi-vimeo-client-secret');
delete_option('mvi-templates');
delete_site_option('mvi-templates');
delete_option('mvi-vimeo-api-id');
delete_site_option('mvi-vimeo-api-id');
delete_option('mvi-vimeo-api-secret');
delete_site_option('mvi-vimeo-api-secret');

// Delete Transients
delete_transient('meks-video-importer-vimeo-access-token');
delete_site_transient('meks-video-importer-vimeo-access-token');

