<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lzcs_color');
delete_site_option('lzcs_color');
delete_option('lzcs_cat');
delete_site_option('lzcs_cat');
delete_option('lzcs_count');
delete_site_option('lzcs_count');
delete_option('lzcs');
delete_site_option('lzcs');

