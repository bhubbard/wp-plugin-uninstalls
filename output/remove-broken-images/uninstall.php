<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r34rbi_version');
delete_site_option('r34rbi_version');
delete_option('r34rbi_previous_version');
delete_site_option('r34rbi_previous_version');
delete_option('r34rbi_deferred_admin_notices');
delete_site_option('r34rbi_deferred_admin_notices');

