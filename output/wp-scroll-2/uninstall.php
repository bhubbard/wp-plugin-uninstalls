<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hhg_scrol_to_top_image_src');
delete_site_option('hhg_scrol_to_top_image_src');
delete_option('hhg_scrol_to_top_enabled');
delete_site_option('hhg_scrol_to_top_enabled');
delete_option('hhg_scrol_to_top_time');
delete_site_option('hhg_scrol_to_top_time');
delete_option('hhg_scrol_to_top_position');
delete_site_option('hhg_scrol_to_top_position');
delete_option('hhg_scrol_to_top_padding');
delete_site_option('hhg_scrol_to_top_padding');

