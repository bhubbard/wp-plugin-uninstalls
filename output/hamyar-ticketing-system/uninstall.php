<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hamyar_page');
delete_site_option('hamyar_page');
delete_option('hamyar_date');
delete_site_option('hamyar_date');
delete_option('hamyar_jquery');
delete_site_option('hamyar_jquery');
delete_option('hamyar_ticket_settings');
delete_site_option('hamyar_ticket_settings');

