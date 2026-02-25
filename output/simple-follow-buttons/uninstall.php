<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfb_version');
delete_site_option('sfb_version');
delete_option('sfb_buttons');
delete_site_option('sfb_buttons');
delete_option('sfb_settings');
delete_site_option('sfb_settings');

