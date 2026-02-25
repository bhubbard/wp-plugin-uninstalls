<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slate-opt-plugin-version');
delete_site_option('slate-opt-plugin-version');
delete_option('slate-opt-cache');
delete_site_option('slate-opt-cache');
delete_option('slate-popup-35824');
delete_site_option('slate-popup-35824');
delete_option('slate-popup-vc');
delete_site_option('slate-popup-vc');
delete_option('slate-popup-raster');
delete_site_option('slate-popup-raster');
delete_option('slate-popup-titles');
delete_site_option('slate-popup-titles');
delete_option('slate-popup-shapes');
delete_site_option('slate-popup-shapes');

