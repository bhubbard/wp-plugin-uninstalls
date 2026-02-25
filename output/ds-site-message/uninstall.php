<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dssm_settings');
delete_site_option('dssm_settings');
delete_option('dssm_version');
delete_site_option('dssm_version');

