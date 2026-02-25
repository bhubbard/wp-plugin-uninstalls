<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linked');
delete_site_option('linked');
delete_option('tk-direction');
delete_site_option('tk-direction');
delete_option('anim');
delete_site_option('anim');
delete_option('span-text-color');
delete_site_option('span-text-color');
delete_option('span-color');
delete_site_option('span-color');
delete_option('tk-width');
delete_site_option('tk-width');
delete_option('ticker_posts_number');
delete_site_option('ticker_posts_number');
delete_option('ticker-category');
delete_site_option('ticker-category');
delete_option('span-name');
delete_site_option('span-name');
delete_option('speed');
delete_site_option('speed');
delete_option('timeout');
delete_site_option('timeout');

