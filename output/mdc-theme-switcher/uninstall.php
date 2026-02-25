<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdc_new_admin_theme');
delete_site_option('mdc_new_admin_theme');
delete_option('mdc_theme_switcher');
delete_site_option('mdc_theme_switcher');

