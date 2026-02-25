<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xdwhatsapp_number');
delete_site_option('xdwhatsapp_number');
delete_option('xdwhatsapp_button_text');
delete_site_option('xdwhatsapp_button_text');
delete_option('xdwhatsapp_button_visibility');
delete_site_option('xdwhatsapp_button_visibility');

