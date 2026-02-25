<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('northstar_activate');
delete_site_option('northstar_activate');
delete_option('northstar_message');
delete_site_option('northstar_message');
delete_option('northstar_text_color');
delete_site_option('northstar_text_color');
delete_option('northstar_bg_color');
delete_site_option('northstar_bg_color');

