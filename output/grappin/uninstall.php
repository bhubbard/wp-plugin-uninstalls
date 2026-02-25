<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grappin_project_id');
delete_site_option('grappin_project_id');
delete_option('grappin_identify_users');
delete_site_option('grappin_identify_users');
delete_option('grappin_version');
delete_site_option('grappin_version');

