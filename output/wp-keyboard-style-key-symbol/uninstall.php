<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpkeysymbl_line_color');
delete_site_option('wpkeysymbl_line_color');
delete_option('wpkeysymbl_box_color');
delete_site_option('wpkeysymbl_box_color');
delete_option('wpkeysymbl_border_color');
delete_site_option('wpkeysymbl_border_color');
delete_option('wpkeysymbl_text_color');
delete_site_option('wpkeysymbl_text_color');

