<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('defer-media-enabled');
delete_site_option('defer-media-enabled');
delete_option('defer-media-appearanceOffsetImages');
delete_site_option('defer-media-appearanceOffsetImages');
delete_option('defer-media-appearanceOffsetVideos');
delete_site_option('defer-media-appearanceOffsetVideos');
delete_option('defer-media-appearanceOffsetIframes');
delete_site_option('defer-media-appearanceOffsetIframes');

