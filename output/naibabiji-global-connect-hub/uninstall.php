<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('naibabiji_gch_contacts');
delete_site_option('naibabiji_gch_contacts');
delete_option('naibabiji_gch_settings');
delete_site_option('naibabiji_gch_settings');

