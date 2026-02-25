<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_activity_bump_denied_activity_types');
delete_site_option('bp_activity_bump_denied_activity_types');
delete_option('bp_activity_bump_denied_user_types');
delete_site_option('bp_activity_bump_denied_user_types');

