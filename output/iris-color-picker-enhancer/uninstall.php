<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icpe_color_palettes1');
delete_site_option('icpe_color_palettes1');
delete_option('icpe_color_palettes2');
delete_site_option('icpe_color_palettes2');
delete_option('icpe_color_palettes3');
delete_site_option('icpe_color_palettes3');
delete_option('icpe_color_palettes4');
delete_site_option('icpe_color_palettes4');
delete_option('icpe_color_palettes5');
delete_site_option('icpe_color_palettes5');
delete_option('icpe_color_palettes6');
delete_site_option('icpe_color_palettes6');
delete_option('icpe_color_palettes7');
delete_site_option('icpe_color_palettes7');
delete_option('icpe_color_alpha');
delete_site_option('icpe_color_alpha');
delete_option('icp_active');
delete_site_option('icp_active');

