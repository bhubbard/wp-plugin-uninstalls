<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rdpano_title');
delete_site_option('rdpano_title');
delete_option('rdpano_width');
delete_site_option('rdpano_width');
delete_option('rdpano_height');
delete_site_option('rdpano_height');
delete_option('rdpano_global_swf');
delete_site_option('rdpano_global_swf');
delete_option('rdpano_panopress');
delete_site_option('rdpano_panopress');
delete_option('rdpano_panostudio');
delete_site_option('rdpano_panostudio');

