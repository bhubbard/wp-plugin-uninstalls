<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Popupwfb_session');
delete_site_option('Popupwfb_session');
delete_option('Popupwfb_group');
delete_site_option('Popupwfb_group');

