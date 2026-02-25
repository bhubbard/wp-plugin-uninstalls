<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbcd_tcstix_button_text');
delete_site_option('cbcd_tcstix_button_text');
delete_option('cbcd_tcstix_button_color');
delete_site_option('cbcd_tcstix_button_color');

