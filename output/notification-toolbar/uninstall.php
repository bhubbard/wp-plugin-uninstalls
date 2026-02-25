<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('statictoolbar_opacity');
delete_site_option('statictoolbar_opacity');
delete_option('statictoolbar_txtcolor');
delete_site_option('statictoolbar_txtcolor');
delete_option('statictoolbar_bgcolor');
delete_site_option('statictoolbar_bgcolor');
delete_option('statictoolbar_rss');
delete_site_option('statictoolbar_rss');
delete_option('statictoolbar_nb');
delete_site_option('statictoolbar_nb');

