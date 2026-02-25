<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bshare_code');
delete_site_option('bshare_code');
delete_option('bshare_pos');
delete_site_option('bshare_pos');
delete_option('bshare_inPage');
delete_site_option('bshare_inPage');
delete_option('bshare_inFeed');
delete_site_option('bshare_inFeed');
delete_option('bshare_infeed');
delete_site_option('bshare_infeed');
delete_option('bshare_inpage');
delete_site_option('bshare_inpage');

