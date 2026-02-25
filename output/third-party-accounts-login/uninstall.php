<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpal_db_version');
delete_site_option('tpal_db_version');
delete_option('tpal_highlighted');
delete_site_option('tpal_highlighted');
delete_option('tpal_displaytype');
delete_site_option('tpal_displaytype');

