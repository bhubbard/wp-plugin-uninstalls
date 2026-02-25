<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fwrsw_full_width_settings');
delete_site_option('fwrsw_full_width_settings');
delete_option('fwrsw_full_width_slider_msg');
delete_site_option('fwrsw_full_width_slider_msg');

