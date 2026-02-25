<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcbw_icon_color');
delete_site_option('fcbw_icon_color');
delete_option('fcbw_bg_color');
delete_site_option('fcbw_bg_color');
delete_option('fcbw_position');
delete_site_option('fcbw_position');

