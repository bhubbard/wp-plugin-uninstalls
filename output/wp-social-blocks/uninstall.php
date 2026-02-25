<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fb_page_link');
delete_site_option('fb_page_link');
delete_option('fblb_width');
delete_site_option('fblb_width');
delete_option('fblb_height');
delete_site_option('fblb_height');
delete_option('fblb_stream');
delete_site_option('fblb_stream');
delete_option('fblb_header');
delete_site_option('fblb_header');
delete_option('fblb_border');
delete_site_option('fblb_border');
delete_option('fblb_color');
delete_site_option('fblb_color');
delete_option('fblb_profile');
delete_site_option('fblb_profile');
delete_option('tw_widgetid');
delete_site_option('tw_widgetid');
delete_option('tw_width');
delete_site_option('tw_width');
delete_option('tw_height');
delete_site_option('tw_height');
delete_option('tw_tweetlimit');
delete_site_option('tw_tweetlimit');
delete_option('tw_noheader');
delete_site_option('tw_noheader');
delete_option('tw_nofooter');
delete_site_option('tw_nofooter');
delete_option('tw_noborders');
delete_site_option('tw_noborders');
delete_option('tw_noscrollbar');
delete_site_option('tw_noscrollbar');
delete_option('tw_theme');
delete_site_option('tw_theme');

