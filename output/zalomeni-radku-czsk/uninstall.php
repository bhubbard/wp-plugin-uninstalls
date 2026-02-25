<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zalomeni_czsk_settings');
delete_site_option('zalomeni_czsk_settings');
delete_option('zalomeni_settings');
delete_site_option('zalomeni_settings');
delete_option('zalomeni_version');
delete_site_option('zalomeni_version');
delete_option('zalomeni_matches');
delete_site_option('zalomeni_matches');
delete_option('zalomeni_replacements');
delete_site_option('zalomeni_replacements');

