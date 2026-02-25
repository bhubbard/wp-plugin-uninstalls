<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2neteaseuser');
delete_site_option('wp2neteaseuser');
delete_option('wp2neteasepass');
delete_site_option('wp2neteasepass');
delete_option('wp2neteaseurl');
delete_site_option('wp2neteaseurl');
delete_option('netease_sdurl');
delete_site_option('netease_sdurl');
delete_option('netease_allowview');
delete_site_option('netease_allowview');
delete_option('netease_msyn');
delete_site_option('netease_msyn');

