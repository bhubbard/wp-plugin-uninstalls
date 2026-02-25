<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hotfix_version');
delete_site_option('hotfix_version');

// Delete Transients
delete_transient('update_themes');
delete_site_transient('update_themes');

