<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inline-tweet-sharer-bitlyapikey');
delete_site_option('inline-tweet-sharer-bitlyapikey');
delete_option('inline-tweet-sharer-bitlyusername');
delete_site_option('inline-tweet-sharer-bitlyusername');
delete_option('inline-tweet-sharer-default');
delete_site_option('inline-tweet-sharer-default');
delete_option('inline-tweet-sharer-removespaces');
delete_site_option('inline-tweet-sharer-removespaces');
delete_option('inline-tweet-sharer-bitly');
delete_site_option('inline-tweet-sharer-bitly');
delete_option('inline-tweet-sharer-urlshortened');
delete_site_option('inline-tweet-sharer-urlshortened');
delete_option('inline-tweet-sharer-usedefault');
delete_site_option('inline-tweet-sharer-usedefault');
delete_option('inline-tweet-sharer-dprefix');
delete_site_option('inline-tweet-sharer-dprefix');
delete_option('inline-tweet-sharer-dsuffix');
delete_site_option('inline-tweet-sharer-dsuffix');
delete_option('inline-tweet-sharer-bypassutfdecode');
delete_site_option('inline-tweet-sharer-bypassutfdecode');
delete_option('inline-tweet-sharer-capitalise');
delete_site_option('inline-tweet-sharer-capitalise');
delete_option('inline-tweet-sharer-extraclass');
delete_site_option('inline-tweet-sharer-extraclass');
delete_option('inline-tweet-sharer-marker');
delete_site_option('inline-tweet-sharer-marker');
delete_option('inline-tweet-sharer-dashicons');
delete_site_option('inline-tweet-sharer-dashicons');
delete_option('inline-tweet-sharer-disable-stylesheets');
delete_site_option('inline-tweet-sharer-disable-stylesheets');

// Delete Transients
delete_transient('its_group_id');
delete_site_transient('its_group_id');

