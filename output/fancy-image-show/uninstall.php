<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FancyImg_Setting');
delete_site_option('FancyImg_Setting');
delete_option('FancyImg_Title');
delete_site_option('FancyImg_Title');

