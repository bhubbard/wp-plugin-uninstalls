<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dropkick_jquery_selectors');
delete_site_option('dropkick_jquery_selectors');
delete_option('dropkick_mobile_device_support');
delete_site_option('dropkick_mobile_device_support');
delete_option('dropkick_ie8_support');
delete_site_option('dropkick_ie8_support');

