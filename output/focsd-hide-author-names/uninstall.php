<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('focsd_han_hide_author_names_settings');
delete_site_option('focsd_han_hide_author_names_settings');

