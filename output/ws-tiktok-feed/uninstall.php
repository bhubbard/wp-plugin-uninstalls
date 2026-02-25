<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tkf_preview_permalink');
delete_site_option('tkf_preview_permalink');
delete_option('tkf_video_last_update');
delete_site_option('tkf_video_last_update');
delete_option('tkf_db_version');
delete_site_option('tkf_db_version');
delete_option('tkf_medias_migrated');
delete_site_option('tkf_medias_migrated');

