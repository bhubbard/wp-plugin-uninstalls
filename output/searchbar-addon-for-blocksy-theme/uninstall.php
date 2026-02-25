<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsid_icon_size');
delete_site_option('bsid_icon_size');
delete_option('bsid_input_height');
delete_site_option('bsid_input_height');
delete_option('bsid_icon_color');
delete_site_option('bsid_icon_color');
delete_option('bsid_enable_icon_dropdown');
delete_site_option('bsid_enable_icon_dropdown');

