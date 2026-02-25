<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('resmio_id');
delete_site_option('resmio_id');
delete_option('resmio_extended');
delete_site_option('resmio_extended');
delete_option('resmio_btn_text');
delete_site_option('resmio_btn_text');
delete_option('resmio_btn_bg');
delete_site_option('resmio_btn_bg');
delete_option('resmio_btn_bg_light');
delete_site_option('resmio_btn_bg_light');
delete_option('resmio_btn_bg_dark');
delete_site_option('resmio_btn_bg_dark');
delete_option('resmio_wdgt_text');
delete_site_option('resmio_wdgt_text');
delete_option('resmio_wdgt_bg');
delete_site_option('resmio_wdgt_bg');
delete_option('resmio_wdgt_width');
delete_site_option('resmio_wdgt_width');
delete_option('resmio_wdgt_height');
delete_site_option('resmio_wdgt_height');

