<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('is_config_is_ed');
delete_site_option('is_config_is_ed');
delete_option('is_config_is_ped');
delete_site_option('is_config_is_ped');
delete_option('is_config_is_med');
delete_site_option('is_config_is_med');
delete_option('is_config_is_led');
delete_site_option('is_config_is_led');
delete_option('is_config_jpeg');
delete_site_option('is_config_jpeg');
delete_option('is_config_png');
delete_site_option('is_config_png');
delete_option('is_config_muki');
delete_site_option('is_config_muki');
delete_option('is_config_fsize');
delete_site_option('is_config_fsize');
delete_option('is_config_is_lmax');
delete_site_option('is_config_is_lmax');
delete_option('is_config_is_fs');
delete_site_option('is_config_is_fs');
delete_option('is_config_is_q');
delete_site_option('is_config_is_q');
delete_option('is_config_is_wmt');
delete_site_option('is_config_is_wmt');
delete_option('is_config_fi');
delete_site_option('is_config_fi');
delete_option('is_config_is_csize_x');
delete_site_option('is_config_is_csize_x');
delete_option('is_config_is_csize_y');
delete_site_option('is_config_is_csize_y');

