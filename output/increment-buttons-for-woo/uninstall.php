<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('incrbufo_dismiss_notice');
delete_site_option('incrbufo_dismiss_notice');
delete_option('incrbufo_first_activate');
delete_site_option('incrbufo_first_activate');
delete_option('incrbufo_settings');
delete_site_option('incrbufo_settings');
delete_option('incrbufo_version');
delete_site_option('incrbufo_version');

