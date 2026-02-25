<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpam_db_version');
delete_site_option('rpam_db_version');

// Delete Transients
delete_transient('rpam_quick_action');
delete_site_transient('rpam_quick_action');
delete_transient('rpam_saved');
delete_site_transient('rpam_saved');
delete_transient('rpam_notice');
delete_site_transient('rpam_notice');

