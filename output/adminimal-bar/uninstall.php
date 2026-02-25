<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adminimal_bar_enabled');
delete_site_option('adminimal_bar_enabled');
delete_option('adminimal_bar_orientation');
delete_site_option('adminimal_bar_orientation');
delete_option('adminimal_bar_minimized_transparent');
delete_site_option('adminimal_bar_minimized_transparent');
delete_option('adminimal_bar_minimized_logo_color');
delete_site_option('adminimal_bar_minimized_logo_color');

