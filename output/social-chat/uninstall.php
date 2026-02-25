<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_facebook');
delete_site_option('sc_facebook');
delete_option('sc_whatsapp');
delete_site_option('sc_whatsapp');
delete_option('sc_email');
delete_site_option('sc_email');
delete_option('sc_call');
delete_site_option('sc_call');
delete_option('sc_call_to_action');
delete_site_option('sc_call_to_action');
delete_option('sc_button_color');
delete_site_option('sc_button_color');
delete_option('sc_position');
delete_site_option('sc_position');
delete_option('sc_order');
delete_site_option('sc_order');

