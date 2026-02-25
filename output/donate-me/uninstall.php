<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('donateme_position');
delete_site_option('donateme_position');
delete_option('donateme_api');
delete_site_option('donateme_api');
delete_option('donateme_recurring');
delete_site_option('donateme_recurring');
delete_option('donateme_currency');
delete_site_option('donateme_currency');
delete_option('donateme_color');
delete_site_option('donateme_color');
delete_option('donateme_textcolor');
delete_site_option('donateme_textcolor');
delete_option('donateme_text');
delete_site_option('donateme_text');

