<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ytpp_rel');
delete_site_option('ytpp_rel');
delete_option('ytpp_info');
delete_site_option('ytpp_info');
delete_option('ytpp_controls');
delete_site_option('ytpp_controls');
delete_option('ytpp_privacy');
delete_site_option('ytpp_privacy');
delete_option('ytpp_iframe_fix');
delete_site_option('ytpp_iframe_fix');
delete_option('ytppYouTubeApi');
delete_site_option('ytppYouTubeApi');
delete_option('ytpp_height');
delete_site_option('ytpp_height');

