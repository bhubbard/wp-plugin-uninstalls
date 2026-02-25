<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p2HeaderCode');
delete_site_option('p2HeaderCode');
delete_option('p2HeaderAdDisplayOption');
delete_site_option('p2HeaderAdDisplayOption');
delete_option('p2HeaderShowAfterContent');
delete_site_option('p2HeaderShowAfterContent');
delete_option('p2HeaderShowOnFrontPage');
delete_site_option('p2HeaderShowOnFrontPage');
delete_option('p2HeaderPriority');
delete_site_option('p2HeaderPriority');
delete_option('p2HeaderShowOnFrontpage');
delete_site_option('p2HeaderShowOnFrontpage');

