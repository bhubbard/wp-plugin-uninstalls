<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginpetze_options');
delete_site_option('loginpetze_options');
delete_option('loginpetze_db_version');
delete_site_option('loginpetze_db_version');

