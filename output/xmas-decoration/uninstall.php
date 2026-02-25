<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xmas_decoration_bar_type');
delete_site_option('xmas_decoration_bar_type');
delete_option('xmas_decoration_body_date_range');
delete_site_option('xmas_decoration_body_date_range');
delete_option('xmas_decoration_body_padding_top');
delete_site_option('xmas_decoration_body_padding_top');

