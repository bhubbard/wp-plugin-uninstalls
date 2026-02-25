<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('new_irc');
delete_site_option('new_irc');
delete_option('kw_use_forum');
delete_site_option('kw_use_forum');
delete_option('kw_use_shortcode');
delete_site_option('kw_use_shortcode');
delete_option('kw_use_shortcode_no_sidebar');
delete_site_option('kw_use_shortcode_no_sidebar');
delete_option('kw_special_width1');
delete_site_option('kw_special_width1');
delete_option('kw_special_width2');
delete_site_option('kw_special_width2');
delete_option('kw_special_width3');
delete_site_option('kw_special_width3');

