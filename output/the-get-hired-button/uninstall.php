<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thegehib_button_activated');
delete_site_option('thegehib_button_activated');
delete_option('thegehib_button_token');
delete_site_option('thegehib_button_token');

