<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apspider_gutenberg_editmenu_name');
delete_site_option('apspider_gutenberg_editmenu_name');
delete_option('apspider_radio_editmenu');
delete_site_option('apspider_radio_editmenu');
delete_option('apspider_gutenberg_radio_editmenu');
delete_site_option('apspider_gutenberg_radio_editmenu');
delete_option('apspp_radio_viewposts');
delete_site_option('apspp_radio_viewposts');

