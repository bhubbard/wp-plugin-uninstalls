<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safelayout_buttons_options_rate');
delete_site_option('safelayout_buttons_options_rate');
delete_option('safelayout_buttons_options_upgrade');
delete_site_option('safelayout_buttons_options_upgrade');
delete_option('safelayout_icons_packs');
delete_site_option('safelayout_icons_packs');

