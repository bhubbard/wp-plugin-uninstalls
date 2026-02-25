<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wst_enable');
delete_site_option('wst_enable');
delete_option('wst_size');
delete_site_option('wst_size');
delete_option('wst_duration');
delete_site_option('wst_duration');
delete_option('wst_txcolor');
delete_site_option('wst_txcolor');
delete_option('wst_bgcolor');
delete_site_option('wst_bgcolor');
delete_option('wst_overclr');
delete_site_option('wst_overclr');
delete_option('wst_otxtclr');
delete_site_option('wst_otxtclr');
delete_option('wst_location');
delete_site_option('wst_location');
delete_option('wst_style');
delete_site_option('wst_style');
delete_option('wst_image');
delete_site_option('wst_image');
delete_option('wst_imgalt');
delete_site_option('wst_imgalt');

