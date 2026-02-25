<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fileupfo_view_install_date');
delete_site_option('fileupfo_view_install_date');
delete_option('fileupfo_view_ignore_notice');
delete_site_option('fileupfo_view_ignore_notice');
delete_option('fileupfo_view_ignore_field_notice');
delete_site_option('fileupfo_view_ignore_field_notice');

