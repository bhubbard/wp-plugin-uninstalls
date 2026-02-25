<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ACTUS_ANIT_VERSION');
delete_site_option('ACTUS_ANIT_VERSION');
delete_option('ACTUS_ANIT_array');
delete_site_option('ACTUS_ANIT_array');
delete_option('ACTUS_ANIT_height');
delete_site_option('ACTUS_ANIT_height');
delete_option('ACTUS_ANIT_density');
delete_site_option('ACTUS_ANIT_density');
delete_option('ACTUS_ANIT_min_font_size');
delete_site_option('ACTUS_ANIT_min_font_size');
delete_option('ACTUS_ANIT_max_font_size');
delete_site_option('ACTUS_ANIT_max_font_size');
delete_option('ACTUS_ANIT_background');
delete_site_option('ACTUS_ANIT_background');
delete_option('ACTUS_ANIT_color');
delete_site_option('ACTUS_ANIT_color');

