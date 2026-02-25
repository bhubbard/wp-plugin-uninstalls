<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csm_construction');
delete_site_option('csm_construction');
delete_option('csm_activate');
delete_site_option('csm_activate');
delete_option('csm_opacity');
delete_site_option('csm_opacity');
delete_option('csm_img1');
delete_site_option('csm_img1');
delete_option('csm_background_color');
delete_site_option('csm_background_color');

