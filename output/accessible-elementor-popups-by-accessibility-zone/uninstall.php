<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('az_welcome_popup_shown');
delete_site_option('az_welcome_popup_shown');

