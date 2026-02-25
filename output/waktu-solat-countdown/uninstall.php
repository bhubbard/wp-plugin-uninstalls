<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ezws_color_scheme');
delete_site_option('ezws_color_scheme');
delete_option('ezws_bg_enable');
delete_site_option('ezws_bg_enable');
delete_option('ezws_bg_repeat');
delete_site_option('ezws_bg_repeat');
delete_option('ezws_bg_image');
delete_site_option('ezws_bg_image');
delete_option('ezws_bg_scheme');
delete_site_option('ezws_bg_scheme');
delete_option('ezws_textalign');
delete_site_option('ezws_textalign');
delete_option('ezws_credit');
delete_site_option('ezws_credit');

