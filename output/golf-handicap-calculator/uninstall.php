<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghc_custom_css');
delete_site_option('ghc_custom_css');
delete_option('ghc_db_version');
delete_site_option('ghc_db_version');

