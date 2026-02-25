<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcnb_enabled');
delete_site_option('wcnb_enabled');
delete_option('wcnb_message');
delete_site_option('wcnb_message');
delete_option('wcnb_button_text');
delete_site_option('wcnb_button_text');

