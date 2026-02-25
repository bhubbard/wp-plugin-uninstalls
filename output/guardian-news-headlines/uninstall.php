<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guardian_headlines_sections');
delete_site_option('guardian_headlines_sections');
delete_option('guardian_headlines_version');
delete_site_option('guardian_headlines_version');
delete_option('guardian_headlines_notified');
delete_site_option('guardian_headlines_notified');

