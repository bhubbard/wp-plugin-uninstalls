<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shp_fbinfo');
delete_site_option('shp_fbinfo');
delete_option('shp_twinfo');
delete_site_option('shp_twinfo');
delete_option('shp_gpinfo');
delete_site_option('shp_gpinfo');
delete_option('shp_plinfo');
delete_site_option('shp_plinfo');
delete_option('shp_pldesc');
delete_site_option('shp_pldesc');
delete_option('shp_spage');
delete_site_option('shp_spage');
delete_option('shp_sfbbut');
delete_site_option('shp_sfbbut');
delete_option('shp_stwbut');
delete_site_option('shp_stwbut');
delete_option('shp_sgpbut');
delete_site_option('shp_sgpbut');
delete_option('shp_butpos');
delete_site_option('shp_butpos');

