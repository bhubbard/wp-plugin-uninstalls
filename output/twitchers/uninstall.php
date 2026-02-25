<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twoptions');
delete_site_option('twoptions');
delete_option('twitchers_options');
delete_site_option('twitchers_options');
delete_option('twitchers_poster');
delete_site_option('twitchers_poster');
delete_option('twitchers_markers');
delete_site_option('twitchers_markers');
delete_option('twitchers_postset');
delete_site_option('twitchers_postset');

