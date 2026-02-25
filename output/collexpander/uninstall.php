<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hidden_stuff_active');
delete_site_option('hidden_stuff_active');
delete_option('hidden_stuff_text');
delete_site_option('hidden_stuff_text');
delete_option('hidden_stuff_button_type');
delete_site_option('hidden_stuff_button_type');

