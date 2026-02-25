<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fftw_nav_bg');
delete_site_option('fftw_nav_bg');
delete_option('fftw_nav_color');
delete_site_option('fftw_nav_color');
delete_option('fftw_nav_border');
delete_site_option('fftw_nav_border');
delete_option('fftw_nav_bg_active');
delete_site_option('fftw_nav_bg_active');
delete_option('fftw_nav_color_active');
delete_site_option('fftw_nav_color_active');
delete_option('fftw_pane_bg');
delete_site_option('fftw_pane_bg');
delete_option('fftw_pro_feature');
delete_site_option('fftw_pro_feature');

