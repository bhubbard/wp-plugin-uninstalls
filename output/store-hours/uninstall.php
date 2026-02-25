<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widgetwo');
delete_site_option('widgetwo');
delete_option('widgetwas');
delete_site_option('widgetwas');
delete_option('titlecolor');
delete_site_option('titlecolor');
delete_option('titlebgcolor');
delete_site_option('titlebgcolor');
delete_option('textcolor');
delete_site_option('textcolor');
delete_option('textbgcolor');
delete_site_option('textbgcolor');
delete_option('buttoncolor');
delete_site_option('buttoncolor');
delete_option('buttonbgcolor');
delete_site_option('buttonbgcolor');

