<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lightbox_alerts_days');
delete_site_option('lightbox_alerts_days');
delete_option('border_color');
delete_site_option('border_color');
delete_option('background_color');
delete_site_option('background_color');
delete_option('header_color');
delete_site_option('header_color');
delete_option('email_address_color');
delete_site_option('email_address_color');
delete_option('lb_link_color');
delete_site_option('lb_link_color');

