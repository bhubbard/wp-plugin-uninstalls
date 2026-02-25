<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lovely_social_page_buttons_settings');
delete_site_option('lovely_social_page_buttons_settings');

