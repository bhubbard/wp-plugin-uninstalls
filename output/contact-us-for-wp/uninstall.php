<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contactuswp_form_options');
delete_site_option('contactuswp_form_options');
delete_option('contactuswp_icon_direction');
delete_site_option('contactuswp_icon_direction');
delete_option('contactuswp_icon_shape');
delete_site_option('contactuswp_icon_shape');
delete_option('contactuswp_icon_color');
delete_site_option('contactuswp_icon_color');
delete_option('contactuswp_form_labels');
delete_site_option('contactuswp_form_labels');
delete_option('contactuswp_send_to_email');
delete_site_option('contactuswp_send_to_email');

