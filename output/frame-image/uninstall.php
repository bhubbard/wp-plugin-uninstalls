<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PF_SETTINGS_OK');
delete_site_option('PF_SETTINGS_OK');
delete_option('PF_SETTINGS_CADRE');
delete_site_option('PF_SETTINGS_CADRE');
delete_option('PF_SETTINGS_PADDING');
delete_site_option('PF_SETTINGS_PADDING');
delete_option('PF_SETTINGS_BORDER_COLOR');
delete_site_option('PF_SETTINGS_BORDER_COLOR');
delete_option('PF_SETTINGS_BORDER_WIDTH');
delete_site_option('PF_SETTINGS_BORDER_WIDTH');
delete_option('PF_SETTINGS_BORDER_TYPE');
delete_site_option('PF_SETTINGS_BORDER_TYPE');

