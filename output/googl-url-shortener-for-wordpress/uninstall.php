<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gg_options_flag');
delete_site_option('gg_options_flag');
delete_option('gg_open_post');
delete_site_option('gg_open_post');
delete_option('gg_open_comment');
delete_site_option('gg_open_comment');

