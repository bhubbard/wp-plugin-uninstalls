<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfedcw_settings');
delete_site_option('cfedcw_settings');
delete_option('cfedcw_version');
delete_site_option('cfedcw_version');
delete_option('cfedcw_deactivated_at');
delete_site_option('cfedcw_deactivated_at');

// Delete Transients
delete_transient('cfedcw_no_supported_forms');
delete_site_transient('cfedcw_no_supported_forms');

