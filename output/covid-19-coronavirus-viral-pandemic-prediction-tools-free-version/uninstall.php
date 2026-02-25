<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cspgf_Main_Settings');
delete_site_option('cspgf_Main_Settings');
delete_option('coderevolution_settings_changed');
delete_site_option('coderevolution_settings_changed');

