<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zpmfc_phone');
delete_site_option('zpmfc_phone');
delete_option('zpmfc_pos');
delete_site_option('zpmfc_pos');
delete_option('zpmfc_color');
delete_site_option('zpmfc_color');
delete_option('zpmfc_text');
delete_site_option('zpmfc_text');

