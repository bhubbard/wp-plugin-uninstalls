<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('text_color');
delete_site_option('text_color');
delete_option('text_color_bg');
delete_site_option('text_color_bg');

