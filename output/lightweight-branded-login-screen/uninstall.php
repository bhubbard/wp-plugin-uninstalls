<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lbls_logo');
delete_site_option('lbls_logo');
delete_option('lbls_background_color');
delete_site_option('lbls_background_color');
delete_option('lbls_background');
delete_site_option('lbls_background');
delete_option('lbls_background_opacity');
delete_site_option('lbls_background_opacity');
delete_option('lbls_title');
delete_site_option('lbls_title');
delete_option('lbls_link');
delete_site_option('lbls_link');

