<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('title');
delete_site_option('title');
delete_option('speed');
delete_site_option('speed');
delete_option('item');
delete_site_option('item');
delete_option('singleitem');
delete_site_option('singleitem');
delete_option('stop');
delete_site_option('stop');
delete_option('bg_color');
delete_site_option('bg_color');
delete_option('height');
delete_site_option('height');
delete_option('pagination');
delete_site_option('pagination');
delete_option('pnumber');
delete_site_option('pnumber');
delete_option('navigation');
delete_site_option('navigation');
delete_option(' navigation');
delete_site_option(' navigation');

