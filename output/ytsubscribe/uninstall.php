<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ytSubscribe_channel');
delete_site_option('ytSubscribe_channel');
delete_option('ytSubscribe_theme');
delete_site_option('ytSubscribe_theme');
delete_option('ytSubscribe_count');
delete_site_option('ytSubscribe_count');
delete_option('ytSubscribe_layout');
delete_site_option('ytSubscribe_layout');
delete_option('ytSubscribe_dom');
delete_site_option('ytSubscribe_dom');
delete_option('ytSubscribe_subscribe_text');
delete_site_option('ytSubscribe_subscribe_text');
delete_option('ytSubscribe_customcss');
delete_site_option('ytSubscribe_customcss');

