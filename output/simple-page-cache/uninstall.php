<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplepagecache_settings_filename');
delete_site_option('simplepagecache_settings_filename');
delete_option('simplepagecache_show_activation_notice');
delete_site_option('simplepagecache_show_activation_notice');

