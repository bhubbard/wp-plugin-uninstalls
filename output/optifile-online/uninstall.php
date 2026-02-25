<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optifileSettings');
delete_site_option('optifileSettings');
delete_option('optifileSettingsT4');
delete_site_option('optifileSettingsT4');
delete_option('optifileSettingsT3');
delete_site_option('optifileSettingsT3');
delete_option('optifileSettingsT2');
delete_site_option('optifileSettingsT2');

