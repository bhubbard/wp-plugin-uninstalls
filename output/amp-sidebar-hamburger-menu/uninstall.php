<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ampsidebar_color');
delete_site_option('ampsidebar_color');
delete_option('jz_ampsidebar_viewoption');
delete_site_option('jz_ampsidebar_viewoption');
delete_option('jz_ampsidebar_mobiledisplay');
delete_site_option('jz_ampsidebar_mobiledisplay');

