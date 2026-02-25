<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SMID_data_Src_Value');
delete_site_option('SMID_data_Src_Value');
delete_option('SMID_excluded_Image_Classes');
delete_site_option('SMID_excluded_Image_Classes');
delete_option('SMID_excluded_Image_ID');
delete_site_option('SMID_excluded_Image_ID');
delete_option('SMID_excluded_Image_Name');
delete_site_option('SMID_excluded_Image_Name');
delete_option('SMID_excluded_Image_Extension');
delete_site_option('SMID_excluded_Image_Extension');

