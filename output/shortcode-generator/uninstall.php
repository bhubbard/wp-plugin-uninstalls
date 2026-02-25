<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scg_version');
delete_site_option('scg_version');
delete_option('scg_widget_many');
delete_site_option('scg_widget_many');

