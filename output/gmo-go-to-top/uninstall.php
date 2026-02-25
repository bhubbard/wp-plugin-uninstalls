<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmogototop[img_color]');
delete_site_option('gmogototop[img_color]');
delete_option('gmogototop[icon_fontstyle]');
delete_site_option('gmogototop[icon_fontstyle]');
delete_option('gmogototop[type]');
delete_site_option('gmogototop[type]');
delete_option('gmogototop[direction]');
delete_site_option('gmogototop[direction]');
delete_option('gmogototop[uploadimg]');
delete_site_option('gmogototop[uploadimg]');
delete_option('gmogototop[iconsize]');
delete_site_option('gmogototop[iconsize]');
delete_option('gmogototop[marginlr]');
delete_site_option('gmogototop[marginlr]');
delete_option('gmogototop[marginbottom]');
delete_site_option('gmogototop[marginbottom]');

