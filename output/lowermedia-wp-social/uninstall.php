<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lmwps_wps_enable');
delete_site_option('lmwps_wps_enable');
delete_option('lmwps_wps_rounded');
delete_site_option('lmwps_wps_rounded');
delete_option('lmwps_wps_bkgrnd');
delete_site_option('lmwps_wps_bkgrnd');
delete_option('lmwps_wps_offsite');
delete_site_option('lmwps_wps_offsite');
delete_option('lmwps_wps_flaticons');
delete_site_option('lmwps_wps_flaticons');
delete_option('lmwps_wps_martop');
delete_site_option('lmwps_wps_martop');
delete_option('lmwps_wps_marleft');
delete_site_option('lmwps_wps_marleft');
delete_option('lmwps_wps_pos');
delete_site_option('lmwps_wps_pos');
delete_option('lmwps_wps_opac');
delete_site_option('lmwps_wps_opac');
delete_option('lmwps_enable_option');
delete_site_option('lmwps_enable_option');
delete_option('lmwps_rounded_option');
delete_site_option('lmwps_rounded_option');
delete_option('lmwps_bkgrnd_option');
delete_site_option('lmwps_bkgrnd_option');
delete_option('lmwps_offsite_option');
delete_site_option('lmwps_offsite_option');
delete_option('lmwps_flaticons_option');
delete_site_option('lmwps_flaticons_option');
delete_option('lmwps_martop_option');
delete_site_option('lmwps_martop_option');
delete_option('lmwps_marleft_option');
delete_site_option('lmwps_marleft_option');
delete_option('lmwps_pos_option');
delete_site_option('lmwps_pos_option');
delete_option('lmwps_opac_option');
delete_site_option('lmwps_opac_option');

