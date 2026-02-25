<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chrssto_version');
delete_site_option('chrssto_version');
delete_option('chrs_theme_options');
delete_site_option('chrs_theme_options');

