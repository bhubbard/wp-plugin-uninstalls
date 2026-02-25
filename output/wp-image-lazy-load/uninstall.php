<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpimagelazyload_skipiframe');
delete_site_option('wpimagelazyload_skipiframe');
delete_option('wpimagelazyload_skipparent');
delete_site_option('wpimagelazyload_skipparent');
delete_option('wpimagelazyload_skipvideo');
delete_site_option('wpimagelazyload_skipvideo');
delete_option('wpimagelazyload_skipallparent');
delete_site_option('wpimagelazyload_skipallparent');
delete_option('wpimagelazyload_loadonposition');
delete_site_option('wpimagelazyload_loadonposition');
delete_option('wpimagelazyload_animation');
delete_site_option('wpimagelazyload_animation');
delete_option('wpimagelazyload_animationduration');
delete_site_option('wpimagelazyload_animationduration');
delete_option('wpimagelazyload_animationtiming');
delete_site_option('wpimagelazyload_animationtiming');
delete_option('wpimagelazyload_phplazyload');
delete_site_option('wpimagelazyload_phplazyload');
delete_option('wpimagelazyload_themefilesmofidied');
delete_site_option('wpimagelazyload_themefilesmofidied');

