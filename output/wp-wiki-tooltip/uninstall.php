<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-wiki-tooltip-settings-base');
delete_site_option('wp-wiki-tooltip-settings-base');
delete_option('wp-wiki-tooltip-settings-error');
delete_site_option('wp-wiki-tooltip-settings-error');
delete_option('wp-wiki-tooltip-settings-design');
delete_site_option('wp-wiki-tooltip-settings-design');
delete_option('wp-wiki-tooltip-settings-thumb');
delete_site_option('wp-wiki-tooltip-settings-thumb');
delete_option('wp-wiki-tooltip-settings');
delete_site_option('wp-wiki-tooltip-settings');

