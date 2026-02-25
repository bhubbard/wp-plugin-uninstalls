<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HLogoZ_gen');
delete_site_option('HLogoZ_gen');
delete_option('HLogoZ_hide');
delete_site_option('HLogoZ_hide');
delete_option('HLogoZ_preDates');
delete_site_option('HLogoZ_preDates');
delete_option('HLogoZ_preImg');
delete_site_option('HLogoZ_preImg');
delete_option('HLogoZ_custom');
delete_site_option('HLogoZ_custom');
delete_option('HLogoZ_count');
delete_site_option('HLogoZ_count');

