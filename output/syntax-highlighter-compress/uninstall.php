<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shc_opt');
delete_site_option('shc_opt');
delete_option('shc_theme');
delete_site_option('shc_theme');
delete_option('shc_autolinks');
delete_site_option('shc_autolinks');
delete_option('shc_collapse');
delete_site_option('shc_collapse');
delete_option('shc_gutter');
delete_site_option('shc_gutter');
delete_option('shc_smarttabs');
delete_site_option('shc_smarttabs');
delete_option('shc_tabsize');
delete_site_option('shc_tabsize');
delete_option('shc_toolbar');
delete_site_option('shc_toolbar');

