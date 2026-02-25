<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_spoiler_bg_wrap');
delete_site_option('simple_spoiler_bg_wrap');
delete_option('simple_spoiler_bg_body');
delete_site_option('simple_spoiler_bg_body');
delete_option('simple_spoiler_br_color');
delete_site_option('simple_spoiler_br_color');

