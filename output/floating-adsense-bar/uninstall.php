<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FF_width');
delete_site_option('FF_width');
delete_option('FF_height');
delete_site_option('FF_height');
delete_option('FF_LeftRight');
delete_site_option('FF_LeftRight');
delete_option('FF_Code');
delete_site_option('FF_Code');

