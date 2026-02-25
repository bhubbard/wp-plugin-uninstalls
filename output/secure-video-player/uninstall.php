<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('svpdrm_widevine_px');
delete_site_option('svpdrm_widevine_px');
delete_option('svpdrm_playready_px');
delete_site_option('svpdrm_playready_px');
delete_option('svpdrm_fairplay_px');
delete_site_option('svpdrm_fairplay_px');

