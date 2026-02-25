<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ilc_flvbox_path');
delete_site_option('ilc_flvbox_path');
delete_option('ilc_flvbox_width');
delete_site_option('ilc_flvbox_width');
delete_option('ilc_flvbox_height');
delete_site_option('ilc_flvbox_height');
delete_option('ilc_tb');
delete_site_option('ilc_tb');
delete_option('ilc_player');
delete_site_option('ilc_player');
delete_option('ilc_flvbox_osflv_bgcolor');
delete_site_option('ilc_flvbox_osflv_bgcolor');
delete_option('ilc_flvbox_osflv_fgcolor');
delete_site_option('ilc_flvbox_osflv_fgcolor');
delete_option('ilc_flvbox_osflv_volume');
delete_site_option('ilc_flvbox_osflv_volume');

